import NTRUSign.Polynomial as pn
import numpy as np
from multiprocessing import Pool, cpu_count


def singleWorker(params):
    """
    A single function that can be executed in parallel to accelerate
    Key creation
    """
    N, df, dg, q, t = params
    while True:
        try:
            ft = pn.randomGenPoly(N, df)
            gt = pn.randomGenPoly(N, dg)

            if t == 'transpose':
                f = ft
                fp = gt
            elif t == 'standard':
                (F, G) = pn.NTRUSolve(N, q, ft, gt)
                f = ft
                fp = F
            h = (f.inv(q).star_multiply_fft(fp)).mod(q)
            break
        except Exception as e:
            print(f"Exception {e} catched, retrying...")
            pass
    return (f, fp, h)


class KeyPair:
    def __init__(self,
                 N=251,
                 q=128,
                 df=73,
                 dg=71,
                 B=1,
                 t='transpose',
                 gen=False,
                 name="User Name",
                 email="user@example.com"):
        """
        Create a key with the parameter passed to the constructor
        """
        if gen:
            f = [None for _ in range(B+1)]
            fp = [None for _ in range(B+1)]
            h = [None for _ in range(B+1)]

            # The key generation will be separated between multiple processes.
            # We try to put 2 process by CPU cores
            try:
                nproc = max(2 * cpu_count(), B+1)
            except NotImplementedError:
                nproc = B+1

            params = [(N, df, dg, q, t) for _ in range(nproc)]
            i = 0
            res = []
            '''
            with Pool(nproc) as p:
                print(f"Launching {nproc} processes")
                for i in p.imap_unordered(singleWorker, params, chunksize=1):
                    # Every time a result is received it is put in res
                    res += [i]
                    print(f"Got {len(res)} answer(s) out of {B+1}")
                    if len(res) >= B+1:
                        # If we have enough results the process are stopped
                        break
            '''
            print("Generating keys")
            for i in range(B+1):
                res.append(singleWorker(params[i]))


            f = [r[0] for r in res]
            fp = [r[1] for r in res]
            h = [r[2] for r in res]

            self.pub = h[0]
            self.priv = (f, fp, h)
        else:
            """
            The key pair was not generated,
            it will be totally or partially provided afterwards.
            """
            self.pub = None
            self.priv = None
        self.N = N
        self.B = B
        self.q = q
        self.df = df
        self.dg = dg
        self.name = name
        self.email = email

    def export_pub(self, printk=True):
        """
        Export the public key in a readable format either by returning it to
        the standard output or saving it in a string.
        """
        if self.pub is None:
            print("No public key saved, please load or generate a key pair")
            return
        s = "-----BEGIN NTRU PUBLIC KEY BLOCK-----\n"
        s += self.name+"<"+self.email+">\n\n"
        for c in self.pub.coeff:
            s += str(c) + "|"
        s = s[:-1]
        s += "\n=="+str(self.N)+"|"+str(self.B)+"|"+str(self.q)+"|"+str(self.df)+"|"+str(self.dg)
        s += "\n\n-----END NTRU PUBLIC KEY BLOCK-----"

        if printk:
            print(s)
        return s

    def import_pub(self, s):
        """
        Import a public key previously exported by the export method.
        """
        self.name = ""
        self.email = ""
        cursor = 0
        while s[cursor] != '\n':
            cursor += 1
        cursor += 1
        while s[cursor] != '<':
            self.name += s[cursor]
            cursor += 1
        cursor += 1
        while s[cursor] != '>':
            self.email += s[cursor]
            cursor += 1
        for i in range(2):
            while (s[cursor] != '\n'):
                cursor += 1
            cursor += 1
        public_coeff = []
        sn = ""
        while s[cursor] != '\n':
            if s[cursor] == '|':
                public_coeff.append(int(sn))
                sn = ""
            else:
                sn += s[cursor]
            cursor += 1
        public_coeff.append(int(sn))
        sn = ""

        cursor += 3
        while s[cursor] != '|':
            sn += s[cursor]
            cursor += 1
        self.N = int(sn)
        sn = ""
        cursor += 1
        while s[cursor] != '|':
            sn += s[cursor]
            cursor += 1
        self.B = int(sn)
        sn = ""
        cursor += 1
        while s[cursor] != '|':
            sn += s[cursor]
            cursor += 1
        self.q = int(sn)
        sn = ""
        cursor += 1
        while s[cursor] != '|':
            sn += s[cursor]
            cursor += 1
        self.df = int(sn)
        sn = ""
        cursor += 1
        while s[cursor] != '\n':
            sn += s[cursor]
            cursor += 1
        self.dg = int(sn)

        self.pub = pn.Polynomial(N=self.N)
        self.pub.coeff = np.array(public_coeff)

    def export_priv(self, printk=True):
        """
        Export the private key in a readable format either by returning it to
        the standard output or saving it in a string.
        """
        if self.priv is None:
            print("No priv key saved, please load or generate a key pair")
            return
        s = "-----BEGIN NTRU PRIVATE KEY BLOCK-----\n"
        s += self.name+"<"+self.email+">\n\n"
        for i in range(self.B+1):
            for c in self.priv[0][i].coeff:
                s += str(c)+"|"
            s = s[:-1]
            s += '\n'

            for c in self.priv[1][i].coeff:
                s += str(c)+"|"
            s = s[:-1]
            s += '\n'

            for c in self.priv[2][i].coeff:
                s += str(c)+"|"
            s = s[:-1]
            s += "\n~\n"
        s = s[:-3]
        s += "\n=="+str(self.q)
        s += "\n\n-----END NTRU PRIVATE KEY BLOCK-----"
        if printk:
            print(s)
        return s

    def import_priv(self, s):
        """
        Import a private key previously exported by the export method.
        """
        self.priv = ([], [], [])
        self.name = ""
        self.email = ""
        cursor = 0
        while s[cursor] != '\n':
            cursor += 1
        cursor += 1
        while s[cursor] != '<':
            self.name += s[cursor]
            cursor += 1
        cursor += 1
        while s[cursor] != '>':
            self.email += s[cursor]
            cursor += 1
        for i in range(2):
            while (s[cursor] != '\n'):
                cursor += 1
            cursor += 1
        self.B = 0
        while True:
            f = []
            fp = []
            h = []
            sn = ""
            while s[cursor] != '\n':
                if s[cursor] == '|':
                    f.append(int(sn))
                    sn = ""
                else:
                    sn += s[cursor]
                cursor += 1
            f.append(int(sn))
            cursor += 1
            sn = ""
            while s[cursor] != '\n':
                if s[cursor] == '|':
                    fp.append(int(sn))
                    sn = ""
                else:
                    sn += s[cursor]
                cursor += 1
            fp.append(int(sn))
            cursor += 1
            sn = ""
            while s[cursor] != '\n':
                if s[cursor] == '|':
                    h.append(int(sn))
                    sn = ""
                else:
                    sn += s[cursor]
                cursor += 1
            h.append(int(sn))
            sn = ""

            self.N = len(f)

            F = pn.Polynomial(N=self.N)
            F.coeff = np.array(f)
            Fp = pn.Polynomial(N=self.N)
            Fp.coeff = np.array(fp)
            H = pn.Polynomial(N=self.N)
            H.coeff = np.array(h)

            self.priv[0].append(F)
            self.priv[1].append(Fp)
            self.priv[2].append(H)

            if s[cursor+1] != '~':
                break

            self.B += 1
            cursor += 3

        cursor += 3
        while s[cursor] != "\n":
            sn += s[cursor]
            cursor += 1

        self.q = int(sn)


if __name__ == "__main__":
    import time
    t = time.time()
    N = 32
    k = KeyPair(251, 128, 73, 71, 1, gen=True, name="Paul Martin", email="pmartin@email.fr")
    print(f"Time to calculate key : {int((time.time()-t)*100)/100}s")
    s = k.export_pub(True)
    s2 = k.export_priv(True)

    k2 = KeyPair(gen=False)
    k2.import_pub(s)
    k2.import_priv(s2)
    k2.export_pub(True)
    k2.export_priv(True)
