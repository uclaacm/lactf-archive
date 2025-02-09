#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <resolv.h>
#include <arpa/nameser.h>
#include <arpa/nameser_compat.h>
#include <unistd.h>

#pragma GCC push_options
#pragma GCC optimize("O0")
void update1(char *h)
{
    for (int i = 0; h[i]; i++)
        h[i] ^= 0x20;
}
void update2(char *l)
{
    for (int i = 0; l[i]; i++)
        l[i] ^= (i * 3);
}
void update3(char *fmt)
{
    for (int j = 0; fmt[j]; j++)
        fmt[j] ^= 0x11;
}
#pragma GCC pop_options

int main()
{
    setvbuf(stdout, NULL, _IONBF, 0);
    char input[129];
    char query[256];
    unsigned char response[NS_PACKETSZ];
    char buffer[1024];
    int i = 0;
    printf("Enter the flag: ");
    // Read input string
    if (!fgets(input, sizeof(input), stdin))
    {
        return 1;
    }
    input[strcspn(input, "\n")] = 0; // Remove newline

    printf("Checking (this may take a while)");

    // Initialize resolver
    if (res_init() < 0)
    {
        fprintf(stderr, "\nAn unexpected error occurred.\n");
        return -2;
    }

    char h[] = {
        'n' ^ 0x20, 's' ^ 0x20, '1' ^ 0x20,
        'r' ^ 0x20, 'e' ^ 0x20, 'v' ^ 0x20, '.' ^ 0x20,
        'l' ^ 0x20, 'a' ^ 0x20, 'c' ^ 0x20, '.' ^ 0x20,
        't' ^ 0x20, 'f' ^ 0x20, '\0' ^ 0x20};
    update1(h);
    struct hostent *he = gethostbyname(h);
    if (!he)
    {
        fprintf(stderr, "\nAn unexpected error occurred. Is the program running in a restricted sandbox?\n");
        return -2;
    }
    _res.nscount = 1;
    memcpy(&_res.nsaddr_list[0].sin_addr, he->h_addr_list[0], he->h_length);

    // Get length from TXT record
    unsigned char len_response[NS_PACKETSZ];
    char l[] = {
        'l' ^ (0 * 3), 'e' ^ (1 * 3), 'n' ^ (2 * 3), '.' ^ (3 * 3),
        'r' ^ (4 * 3), 'e' ^ (5 * 3), 'v' ^ (6 * 3), '.' ^ (7 * 3),
        'l' ^ (8 * 3), 'a' ^ (9 * 3), 'c' ^ (10 * 3), '.' ^ (11 * 3),
        't' ^ (12 * 3), 'f' ^ (13 * 3), '\0' ^ (14 * 3)};
    update2(l);
    int len_response_len = res_query(l, C_IN, T_TXT, len_response, sizeof(len_response));
    if (len_response_len < 0)
    {
        fprintf(stderr, "\nAn unexpected error occurred.\n");
        return -2;
    }

    ns_msg len_handle;
    ns_initparse(len_response, len_response_len, &len_handle);

    ns_rr len_rr;
    if (ns_parserr(&len_handle, ns_s_an, 0, &len_rr) < 0)
    {
        fprintf(stderr, "\nAn unexpected error occurred.\n");
        return -2;
    }

    if (ns_rr_type(len_rr) != T_TXT)
    {
        fprintf(stderr, "\nAn unexpected error occurred.\n");
        return -2;
    }

    unsigned char *len_txt = (unsigned char *)ns_rr_rdata(len_rr);
    int txt_len = *len_txt++;
    char len_buffer[256];
    memcpy(len_buffer, len_txt, txt_len);
    len_buffer[txt_len] = '\0';

    if (strlen(input) != atoi(len_buffer))
    {
        printf("\nIncorrect.\n");
        return -2;
    }

    while (i != -1)
    {
        // Construct DNS query
        char fmt[] = {
            '%' ^ 0x11, 'd' ^ 0x11, '.' ^ 0x11,
            'r' ^ 0x11, 'e' ^ 0x11, 'v' ^ 0x11, '.' ^ 0x11,
            'l' ^ 0x11, 'a' ^ 0x11, 'c' ^ 0x11, '.' ^ 0x11,
            't' ^ 0x11, 'f' ^ 0x11, '\0' ^ 0x11};
        update3(fmt);
        snprintf(query, sizeof(query), fmt, i);
        // printf("QUERY: %s\n", query);
        //  Perform DNS TXT query
        int response_len = res_query(query, C_IN, T_TXT, response, sizeof(response));
        if (response_len < 0)
        {
            fprintf(stderr, "\nAn unexpected error occurred.\n");
            return -1;
        }

        ns_msg handle;
        ns_initparse(response, response_len, &handle);

        // Get the first TXT record
        ns_rr rr;
        if (ns_parserr(&handle, ns_s_an, 0, &rr) < 0)
        {
            fprintf(stderr, "\nAn unexpected error occurred.\n");
            return -1;
        }

        if (ns_rr_type(rr) == T_TXT)
        {
            unsigned char *txt_data = (unsigned char *)ns_rr_rdata(rr);
            int txt_len = *txt_data++; // First byte is length

            memcpy(buffer, txt_data, txt_len);
            buffer[txt_len] = '\0';

            char *first_part = strtok(buffer, ";");
            char *second_part = strtok(NULL, ";");

            // printf("Received DNS record: next_i=%s, check=%s\n", first_part, second_part);

            if (first_part)
            {
                i = atoi(first_part);
            }

            if (second_part)
            {
                int pos, bit;
                if (sscanf(second_part, "%d,%d", &pos, &bit) == 2)
                {

                    if (pos < strlen(input) * 8)
                    {

                        size_t byte_pos = pos / 8;
                        size_t bit_pos = 7 - (pos % 8);
                        int char_bit = (input[byte_pos] >> bit_pos) & 1;
                        if ((char_bit == 0 && bit == 1) || (char_bit == 1 && bit == 0))
                        {
                            // printf("Mismatch at position %d, bit %d\n", pos, bit);
                            printf("\nIncorrect.\n");

                            return -1;
                        }
                        else
                        {
                            // printf("Match at position %d, bit %d\n", pos, bit);
                        }
                    }
                }
            }

            sleep(1);
            printf(".");
        }
    }

    printf("Correct!\n");

    return 0;
}