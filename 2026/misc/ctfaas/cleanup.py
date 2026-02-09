# GCP Projects have a 500 firewall rule limit.
# Had to run this script during the ctf to make sure we didn't hit the limit with unused rules


from google.cloud import compute_v1
from collections import defaultdict

# --- CONFIGURATION ---
PROJECT_ID = "lactf-2026-ctfaas"  # Replace with your Project ID
NAME_PREFIX = "ctfaas-"
DRY_RUN = True  # Set to False to actually delete rules
# ---------------------

def get_running_instances(project_id):
    """
    Returns a list of running instances with their tags, service accounts, and network details.
    """
    instance_client = compute_v1.InstancesClient()
    request = compute_v1.AggregatedListInstancesRequest(project=project_id)
    
    running_vms = []
    
    # Iterate over all zones
    for zone, response in instance_client.aggregated_list(request=request):
        if response.instances:
            for instance in response.instances:
                # Check if instance is RUNNING
                if instance.status == "RUNNING":
                    # Parse network URL to get just the network name
                    # Network interfaces are a list, usually looking at the first one (nic0) is sufficient for simple setups
                    # but firewall rules apply to the VPC.
                    networks = set()
                    for interface in instance.network_interfaces:
                        # network URI format: https://www.googleapis.com/compute/v1/projects/.../global/networks/NAME
                        net_name = interface.network.split('/')[-1]
                        networks.add(net_name)

                    running_vms.append({
                        "name": instance.name,
                        "tags": set(instance.tags.items) if instance.tags else set(),
                        "service_accounts": {sa.email for sa in instance.service_accounts},
                        "networks": networks
                    })
    return running_vms

def is_rule_applied_to_running_vm(rule, running_vms):
    """
    Determines if a firewall rule applies to any currently running VM.
    """
    rule_network = rule.network.split('/')[-1]
    
    # Filter VMs that are in the same network as the firewall rule
    vms_in_network = [vm for vm in running_vms if rule_network in vm['networks']]
    
    # If no running VMs in this network, the rule is definitely not applied to a running VM
    if not vms_in_network:
        return False

    # 1. Check Target Tags
    if rule.target_tags:
        rule_tags = set(rule.target_tags)
        for vm in vms_in_network:
            if not rule_tags.isdisjoint(vm['tags']): # If they share at least one tag
                return True
        return False # No running VM matched the tags

    # 2. Check Target Service Accounts
    if rule.target_service_accounts:
        rule_sas = set(rule.target_service_accounts)
        for vm in vms_in_network:
            if not rule_sas.isdisjoint(vm['service_accounts']):
                return True
        return False

    # 3. If no target tags and no target service accounts, it applies to ALL instances in the network
    # Since we established earlier that vms_in_network is not empty, it applies.
    return True

def clean_firewall_rules():
    firewall_client = compute_v1.FirewallsClient()
    
    print(f"Fetching running instances for project: {PROJECT_ID}...")
    running_vms = get_running_instances(PROJECT_ID)
    print(f"Found {len(running_vms)} running instances.")

    print(f"Scanning firewall rules starting with '{NAME_PREFIX}'...")
    list_request = compute_v1.ListFirewallsRequest(project=PROJECT_ID)
    
    rules_to_delete = []

    for rule in firewall_client.list(request=list_request):
        if rule.name.startswith(NAME_PREFIX):
            if not is_rule_applied_to_running_vm(rule, running_vms):
                rules_to_delete.append(rule.name)
            else:
                print(f"[SKIP] Rule '{rule.name}' is currently applied to a running VM.")

    if not rules_to_delete:
        print("No matching rules found for deletion.")
        return

    print("\n--- Summary ---")
    for rule_name in rules_to_delete:
        print(f"Pending Delete: {rule_name}")
    
    if DRY_RUN:
        print("\n[DRY RUN] No actions taken. Change DRY_RUN to False to execute.")
    else:
        print("\nDeleting rules...")
        for rule_name in rules_to_delete:
            try:
                op = firewall_client.delete(project=PROJECT_ID, firewall=rule_name)
                # Wait for operation (optional, can slow down script if many deletions)
                op.result() 
                print(f"Deleted: {rule_name}")
            except Exception as e:
                print(f"Error deleting {rule_name}: {e}")

if __name__ == "__main__":
    clean_firewall_rules()