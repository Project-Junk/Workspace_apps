.class Lcom/c/a/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/a/a/p;


# static fields
.field private static final c:[C

.field private static final d:[Z

.field private static final e:[C

.field private static final f:[C

.field private static final g:[C

.field private static final h:[C

.field private static final i:[C

.field private static final j:[C

.field private static final k:[C

.field private static final l:[C

.field private static final m:[C

.field private static final n:[C

.field private static final o:[C

.field private static final p:[C

.field private static final q:[C

.field private static final r:[C

.field private static final s:[C

.field private static final t:[C

.field private static final u:[C

.field private static final v:[C

.field private static final w:[C


# instance fields
.field private final A:Ljava/util/Hashtable;

.field private final B:Ljava/util/Hashtable;

.field private final C:Lcom/c/a/a/o;

.field private final D:Ljava/lang/String;

.field private E:I

.field private F:Z

.field private final G:I

.field private final H:[C

.field private I:I

.field private J:I

.field private K:Z

.field private final L:[C

.field private M:I

.field private final N:Lcom/c/a/a/b;

.field private final O:Lcom/c/a/a/n;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private final z:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/c/a/a/l;->c:[C

    const/16 v1, 0x80

    new-array v2, v1, [Z

    sput-object v2, Lcom/c/a/a/l;->d:[Z

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const-string v1, "<!--"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/c/a/a/l;->e:[C

    const-string v1, "-->"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/c/a/a/l;->f:[C

    const-string v1, "<?"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/c/a/a/l;->g:[C

    const-string v1, "?>"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/c/a/a/l;->h:[C

    const-string v1, "<!DOCTYPE"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/c/a/a/l;->i:[C

    const-string v1, "<?xml"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/c/a/a/l;->j:[C

    const-string v1, "encoding"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/c/a/a/l;->k:[C

    const-string v1, "version"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/c/a/a/l;->l:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/c/a/a/l;->m:[C

    const-string v0, "<!"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/c/a/a/l;->n:[C

    const-string v0, "&#"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/c/a/a/l;->o:[C

    const-string v0, "<!ENTITY"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/c/a/a/l;->p:[C

    const-string v0, "NDATA"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/c/a/a/l;->q:[C

    const-string v0, "SYSTEM"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/c/a/a/l;->r:[C

    const-string v0, "PUBLIC"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/c/a/a/l;->s:[C

    const-string v0, "<![CDATA["

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/c/a/a/l;->t:[C

    const-string v0, "]]>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/c/a/a/l;->u:[C

    const-string v0, "/>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/c/a/a/l;->v:[C

    const-string v0, "</"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/c/a/a/l;->w:[C

    return-void

    :cond_0
    sget-object v3, Lcom/c/a/a/l;->d:[Z

    invoke-static {v2}, Lcom/c/a/a/l;->d(C)Z

    move-result v4

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto/16 :goto_0

    :array_0
    .array-data 2
        0x2es
        0x2ds
        0x5fs
        0x3as
    .end array-data

    :array_1
    .array-data 2
        0x5fs
        0x2es
        0x3as
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;Lcom/c/a/a/o;Ljava/lang/String;Lcom/c/a/a/n;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/c/a/a/l;-><init>(Ljava/lang/String;Ljava/io/Reader;[CLcom/c/a/a/o;Ljava/lang/String;Lcom/c/a/a/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;[CLcom/c/a/a/o;Ljava/lang/String;Lcom/c/a/a/n;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/l;->y:Ljava/lang/String;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/c/a/a/l;->A:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/c/a/a/l;->B:Ljava/util/Hashtable;

    const/4 v1, -0x2

    iput v1, p0, Lcom/c/a/a/l;->E:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/c/a/a/l;->F:Z

    const/16 v2, 0x400

    iput v2, p0, Lcom/c/a/a/l;->G:I

    iput v1, p0, Lcom/c/a/a/l;->I:I

    iput v1, p0, Lcom/c/a/a/l;->J:I

    iput-boolean v1, p0, Lcom/c/a/a/l;->K:Z

    const/16 v3, 0xff

    new-array v3, v3, [C

    iput-object v3, p0, Lcom/c/a/a/l;->L:[C

    const/4 v3, -0x1

    iput v3, p0, Lcom/c/a/a/l;->M:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/c/a/a/l;->M:I

    iput-object v0, p0, Lcom/c/a/a/l;->N:Lcom/c/a/a/b;

    if-nez p4, :cond_0

    sget-object p4, Lcom/c/a/a/p;->a:Lcom/c/a/a/o;

    :cond_0
    iput-object p4, p0, Lcom/c/a/a/l;->C:Lcom/c/a/a/o;

    if-nez p5, :cond_1

    move-object p4, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lcom/c/a/a/l;->D:Ljava/lang/String;

    iget-object p4, p0, Lcom/c/a/a/l;->A:Ljava/util/Hashtable;

    const-string p5, "lt"

    const-string v4, "<"

    invoke-virtual {p4, p5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/c/a/a/l;->A:Ljava/util/Hashtable;

    const-string p5, "gt"

    const-string v4, ">"

    invoke-virtual {p4, p5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/c/a/a/l;->A:Ljava/util/Hashtable;

    const-string p5, "amp"

    const-string v4, "&"

    invoke-virtual {p4, p5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/c/a/a/l;->A:Ljava/util/Hashtable;

    const-string p5, "apos"

    const-string v4, "\'"

    invoke-virtual {p4, p5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/c/a/a/l;->A:Ljava/util/Hashtable;

    const-string p5, "quot"

    const-string v4, "\""

    invoke-virtual {p4, p5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/c/a/a/l;->H:[C

    iput v1, p0, Lcom/c/a/a/l;->I:I

    iget-object p2, p0, Lcom/c/a/a/l;->H:[C

    array-length p2, p2

    iput p2, p0, Lcom/c/a/a/l;->J:I

    iput-boolean v3, p0, Lcom/c/a/a/l;->K:Z

    iput-object v0, p0, Lcom/c/a/a/l;->z:Ljava/io/Reader;

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lcom/c/a/a/l;->z:Ljava/io/Reader;

    new-array p2, v2, [C

    iput-object p2, p0, Lcom/c/a/a/l;->H:[C

    invoke-direct {p0}, Lcom/c/a/a/l;->f()I

    :goto_1
    iput-object p1, p0, Lcom/c/a/a/l;->x:Ljava/lang/String;

    iput-object p6, p0, Lcom/c/a/a/l;->O:Lcom/c/a/a/n;

    iget-object p1, p0, Lcom/c/a/a/l;->O:Lcom/c/a/a/n;

    invoke-interface {p1, p0}, Lcom/c/a/a/n;->a(Lcom/c/a/a/p;)V

    invoke-direct {p0}, Lcom/c/a/a/l;->x()V

    iget-object p1, p0, Lcom/c/a/a/l;->O:Lcom/c/a/a/n;

    invoke-interface {p1}, Lcom/c/a/a/n;->b()V

    invoke-direct {p0}, Lcom/c/a/a/l;->Z()Lcom/c/a/a/f;

    move-result-object p1

    iget-object p2, p0, Lcom/c/a/a/l;->y:Ljava/lang/String;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/c/a/a/l;->y:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/c/a/a/f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/c/a/a/l;->C:Lcom/c/a/a/o;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "DOCTYPE name \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lcom/c/a/a/l;->y:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, "\" not same as tag name, \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/c/a/a/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\" of root element"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/c/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/c/a/a/l;->b()I

    move-result p4

    invoke-interface {p2, p1, p3, p4}, Lcom/c/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/c/a/a/l;->r()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/c/a/a/l;->z:Ljava/io/Reader;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/c/a/a/l;->z:Ljava/io/Reader;

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    :cond_4
    iget-object p0, p0, Lcom/c/a/a/l;->O:Lcom/c/a/a/n;

    invoke-interface {p0}, Lcom/c/a/a/n;->c()V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/c/a/a/l;->s()V

    goto :goto_2
.end method

.method private A()Z
    .locals 1

    sget-object v0, Lcom/c/a/a/l;->j:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result p0

    return p0
.end method

.method private B()Z
    .locals 1

    sget-object v0, Lcom/c/a/a/l;->k:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result p0

    return p0
.end method

.method private C()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/c/a/a/l;->k:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->E()V

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/c/a/a/l;->a(CC)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private D()V
    .locals 2

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    sget-object v0, Lcom/c/a/a/l;->l:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->E()V

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/c/a/a/l;->a(CC)C

    move-result v0

    invoke-direct {p0}, Lcom/c/a/a/l;->G()V

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    return-void
.end method

.method private final E()V
    .locals 1

    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    :cond_0
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    :cond_1
    return-void
.end method

.method private F()Z
    .locals 1

    invoke-direct {p0}, Lcom/c/a/a/l;->h()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x5a

    if-gt v0, p0, :cond_1

    if-le p0, v0, :cond_3

    :cond_1
    sget-object v0, Lcom/c/a/a/l;->m:[C

    invoke-static {p0, v0}, Lcom/c/a/a/l;->a(C[C)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private G()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    invoke-direct {p0}, Lcom/c/a/a/l;->F()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private H()V
    .locals 3

    sget-object v0, Lcom/c/a/a/l;->i:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    invoke-direct {p0}, Lcom/c/a/a/l;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/l;->y:Ljava/lang/String;

    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result v0

    const/16 v1, 0x5b

    const/16 v2, 0x3e

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    invoke-direct {p0, v2}, Lcom/c/a/a/l;->b(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/c/a/a/l;->b(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/l;->F:Z

    invoke-direct {p0}, Lcom/c/a/a/l;->T()Ljava/lang/String;

    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    :cond_0
    invoke-direct {p0, v1}, Lcom/c/a/a/l;->b(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    :goto_0
    const/16 v0, 0x5d

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/c/a/a/l;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/c/a/a/l;->I()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/c/a/a/l;->K()V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Lcom/c/a/a/l;->a(C)V

    return-void
.end method

.method private I()V
    .locals 1

    invoke-direct {p0}, Lcom/c/a/a/l;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/l;->P()Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    :goto_0
    return-void
.end method

.method private J()Z
    .locals 1

    invoke-direct {p0}, Lcom/c/a/a/l;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private K()V
    .locals 2

    invoke-direct {p0}, Lcom/c/a/a/l;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/l;->v()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->t()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/c/a/a/l;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/c/a/a/l;->R()V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/c/a/a/l;->n:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_0
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    :goto_1
    return-void

    :cond_3
    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/c/a/a/l;->b(CC)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b(C)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/c/a/a/m;

    const-string v1, "expecting processing instruction, comment, or \"<!\""

    invoke-direct {v0, p0, v1}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;Ljava/lang/String;)V

    throw v0
.end method

.method private L()C
    .locals 8

    sget-object v0, Lcom/c/a/a/l;->o:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b(C)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/16 v4, 0x3b

    invoke-direct {p0, v4}, Lcom/c/a/a/l;->b(C)Z

    move-result v5

    const/16 v6, 0x20

    if-eqz v5, :cond_2

    invoke-direct {p0, v4}, Lcom/c/a/a/l;->a(C)V

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/c/a/a/l;->L:[C

    invoke-direct {v4, v5, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :try_start_0
    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char p0, v2

    return p0

    :catch_0
    iget-object v2, p0, Lcom/c/a/a/l;->C:Lcom/c/a/a/o;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\" is not a valid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne v0, v1, :cond_1

    const-string v0, "hexadecimal"

    goto :goto_2

    :cond_1
    const-string v0, "decimal"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " number"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/c/a/a/l;->b()I

    move-result p0

    invoke-interface {v2, v0, v1, p0}, Lcom/c/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    return v6

    :cond_2
    iget-object v4, p0, Lcom/c/a/a/l;->L:[C

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v7

    aput-char v7, v4, v3

    const/16 v3, 0xff

    if-lt v5, v3, :cond_3

    iget-object v0, p0, Lcom/c/a/a/l;->C:Lcom/c/a/a/o;

    const-string v1, "Tmp buffer overflow on readCharRef"

    iget-object v2, p0, Lcom/c/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/c/a/a/l;->b()I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lcom/c/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    return v6

    :cond_3
    move v3, v5

    goto :goto_1
.end method

.method private final M()[C
    .locals 2

    sget-object v0, Lcom/c/a/a/l;->o:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/c/a/a/l;->L()C

    move-result p0

    aput-char p0, v0, v1

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->O()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method private final N()Z
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b(C)Z

    move-result p0

    return p0
.end method

.method private O()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/l;->A:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    iget-boolean v2, p0, Lcom/c/a/a/l;->F:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/c/a/a/l;->C:Lcom/c/a/a/o;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "; not found -- possibly defined in external DTD)"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/c/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/c/a/a/l;->b()I

    move-result v4

    invoke-interface {v2, v0, v3, v4}, Lcom/c/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/c/a/a/l;->C:Lcom/c/a/a/o;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No declaration of &"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    return-object v1
.end method

.method private P()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/l;->B:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/c/a/a/l;->C:Lcom/c/a/a/o;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No declaration of %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/c/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/c/a/a/l;->b()I

    move-result v4

    invoke-interface {v2, v0, v3, v4}, Lcom/c/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    return-object v1
.end method

.method private Q()Z
    .locals 1

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b(C)Z

    move-result p0

    return p0
.end method

.method private R()V
    .locals 3

    sget-object v0, Lcom/c/a/a/l;->p:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    invoke-direct {p0}, Lcom/c/a/a/l;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    invoke-direct {p0}, Lcom/c/a/a/l;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/l;->n()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->T()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/c/a/a/l;->B:Ljava/util/Hashtable;

    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    invoke-direct {p0}, Lcom/c/a/a/l;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    invoke-direct {p0}, Lcom/c/a/a/l;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/c/a/a/l;->n()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/c/a/a/l;->U()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/c/a/a/l;->T()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    :cond_3
    sget-object v2, Lcom/c/a/a/l;->q:[C

    invoke-direct {p0, v2}, Lcom/c/a/a/l;->b([C)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/c/a/a/l;->q:[C

    invoke-direct {p0, v2}, Lcom/c/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    invoke-direct {p0}, Lcom/c/a/a/l;->l()Ljava/lang/String;

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/c/a/a/l;->A:Ljava/util/Hashtable;

    goto :goto_1

    :goto_3
    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    :cond_5
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    return-void

    :cond_6
    new-instance v0, Lcom/c/a/a/m;

    const-string v1, "expecting double-quote, \"PUBLIC\" or \"SYSTEM\" while reading entity declaration"

    invoke-direct {v0, p0, v1}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;Ljava/lang/String;)V

    throw v0
.end method

.method private S()Z
    .locals 1

    sget-object v0, Lcom/c/a/a/l;->p:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result p0

    return p0
.end method

.method private T()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/c/a/a/l;->r:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/c/a/a/l;->r:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/c/a/a/l;->s:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/c/a/a/l;->s:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    invoke-direct {p0}, Lcom/c/a/a/l;->q()V

    :goto_0
    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    invoke-direct {p0}, Lcom/c/a/a/l;->p()V

    const-string p0, "(WARNING: external ID not read)"

    return-object p0

    :cond_1
    new-instance v0, Lcom/c/a/a/m;

    const-string v1, "expecting \"SYSTEM\" or \"PUBLIC\" while reading external ID"

    invoke-direct {v0, p0, v1}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;Ljava/lang/String;)V

    throw v0
.end method

.method private U()Z
    .locals 1

    sget-object v0, Lcom/c/a/a/l;->r:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/c/a/a/l;->s:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private V()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/c/a/a/l;->a(CC)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->N()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->M()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private W()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_0
    const/16 v2, 0x3c

    invoke-direct {p0, v2}, Lcom/c/a/a/l;->b(C)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x26

    invoke-direct {p0, v2}, Lcom/c/a/a/l;->b(C)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/c/a/a/l;->u:[C

    invoke-direct {p0, v2}, Lcom/c/a/a/l;->b([C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/c/a/a/l;->L:[C

    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v3

    aput-char v3, v2, v1

    iget-object v2, p0, Lcom/c/a/a/l;->L:[C

    aget-char v2, v2, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/c/a/a/l;->h()C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/c/a/a/l;->L:[C

    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v3

    aput-char v3, v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/c/a/a/l;->O:Lcom/c/a/a/n;

    iget-object v3, p0, Lcom/c/a/a/l;->L:[C

    invoke-interface {v1, v3, v0, v2}, Lcom/c/a/a/n;->a([CII)V

    goto :goto_0

    :cond_3
    :goto_1
    if-lez v1, :cond_4

    iget-object v2, p0, Lcom/c/a/a/l;->O:Lcom/c/a/a/n;

    iget-object p0, p0, Lcom/c/a/a/l;->L:[C

    invoke-interface {v2, p0, v0, v1}, Lcom/c/a/a/n;->a([CII)V

    :cond_4
    return-void
.end method

.method private X()V
    .locals 6

    sget-object v0, Lcom/c/a/a/l;->t:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    sget-object v3, Lcom/c/a/a/l;->u:[C

    invoke-direct {p0, v3}, Lcom/c/a/a/l;->b([C)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/c/a/a/l;->u:[C

    invoke-direct {p0, v3}, Lcom/c/a/a/l;->a([C)V

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/c/a/a/l;->L:[C

    invoke-virtual {v1, v3, v0, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object p0, p0, Lcom/c/a/a/l;->O:Lcom/c/a/a/n;

    array-length v2, v1

    invoke-interface {p0, v1, v0, v2}, Lcom/c/a/a/n;->a([CII)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/c/a/a/l;->O:Lcom/c/a/a/n;

    iget-object p0, p0, Lcom/c/a/a/l;->L:[C

    invoke-interface {v1, p0, v0, v2}, Lcom/c/a/a/n;->a([CII)V

    :goto_1
    return-void

    :cond_1
    const/16 v3, 0xff

    if-lt v2, v3, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_2
    iget-object v3, p0, Lcom/c/a/a/l;->L:[C

    invoke-virtual {v1, v3, v0, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move v2, v0

    :cond_3
    iget-object v3, p0, Lcom/c/a/a/l;->L:[C

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v5

    aput-char v5, v3, v2

    move v2, v4

    goto :goto_0
.end method

.method private Y()Z
    .locals 1

    sget-object v0, Lcom/c/a/a/l;->t:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result p0

    return p0
.end method

.method private final Z()Lcom/c/a/a/f;
    .locals 3

    new-instance v0, Lcom/c/a/a/f;

    invoke-direct {v0}, Lcom/c/a/a/f;-><init>()V

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(Lcom/c/a/a/f;)Z

    move-result v1

    iget-object v2, p0, Lcom/c/a/a/l;->O:Lcom/c/a/a/n;

    invoke-interface {v2, v0}, Lcom/c/a/a/n;->a(Lcom/c/a/a/f;)V

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/l;->ab()V

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->c(Lcom/c/a/a/f;)V

    :cond_0
    iget-object p0, p0, Lcom/c/a/a/l;->O:Lcom/c/a/a/n;

    invoke-interface {p0, v0}, Lcom/c/a/a/n;->b(Lcom/c/a/a/f;)V

    return-object v0
.end method

.method private final a(CC)C
    .locals 4

    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v0

    if-eq v0, p1, :cond_1

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/c/a/a/m;

    const/4 v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    const/4 p1, 0x1

    aput-char p2, v2, p1

    invoke-direct {v1, p0, v0, v2}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;C[C)V

    throw v1

    :cond_1
    :goto_0
    return v0
.end method

.method private final a(CCCC)C
    .locals 4

    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v0

    if-eq v0, p1, :cond_1

    if-eq v0, p2, :cond_1

    if-eq v0, p3, :cond_1

    if-ne v0, p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/c/a/a/m;

    const/4 v2, 0x4

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    const/4 p1, 0x1

    aput-char p2, v2, p1

    const/4 p1, 0x2

    aput-char p3, v2, p1

    const/4 p1, 0x3

    aput-char p4, v2, p1

    invoke-direct {v1, p0, v0, v2}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;C[C)V

    throw v1

    :cond_1
    :goto_0
    return v0
.end method

.method private a(I)I
    .locals 5

    iget-boolean v0, p0, Lcom/c/a/a/l;->K:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/l;->H:[C

    array-length v0, v0

    iget v2, p0, Lcom/c/a/a/l;->I:I

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    if-ge v0, p1, :cond_2

    move p1, v2

    :goto_0
    iget v0, p0, Lcom/c/a/a/l;->I:I

    add-int/2addr v0, p1

    iget v3, p0, Lcom/c/a/a/l;->J:I

    if-lt v0, v3, :cond_1

    iget p1, p0, Lcom/c/a/a/l;->J:I

    iget v0, p0, Lcom/c/a/a/l;->I:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/c/a/a/l;->J:I

    iput v2, p0, Lcom/c/a/a/l;->I:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/c/a/a/l;->H:[C

    iget-object v3, p0, Lcom/c/a/a/l;->H:[C

    iget v4, p0, Lcom/c/a/a/l;->I:I

    add-int/2addr v4, p1

    aget-char v3, v3, v4

    aput-char v3, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_1
    invoke-direct {p0}, Lcom/c/a/a/l;->f()I

    move-result p0

    if-ne p0, v1, :cond_4

    if-nez p1, :cond_3

    return v1

    :cond_3
    return p1

    :cond_4
    add-int/2addr p1, p0

    return p1
.end method

.method private final a(C)V
    .locals 2

    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/c/a/a/m;

    invoke-direct {v1, p0, v0, p1}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;CC)V

    throw v1
.end method

.method private final a([C)V
    .locals 5

    array-length v0, p1

    iget v1, p0, Lcom/c/a/a/l;->J:I

    iget v2, p0, Lcom/c/a/a/l;->I:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(I)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/c/a/a/l;->E:I

    new-instance v0, Lcom/c/a/a/m;

    const-string v1, "end of XML file"

    invoke-direct {v0, p0, v1, p1}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;Ljava/lang/String;[C)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/c/a/a/l;->H:[C

    iget v2, p0, Lcom/c/a/a/l;->J:I

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    iput v1, p0, Lcom/c/a/a/l;->E:I

    iget v1, p0, Lcom/c/a/a/l;->J:I

    iget v2, p0, Lcom/c/a/a/l;->I:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_4

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_2

    iget p1, p0, Lcom/c/a/a/l;->I:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/c/a/a/l;->I:I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/c/a/a/l;->H:[C

    iget v3, p0, Lcom/c/a/a/l;->I:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    aget-char v3, p1, v1

    if-ne v2, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/c/a/a/m;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/c/a/a/l;->H:[C

    iget v4, p0, Lcom/c/a/a/l;->I:I

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, p0, v2, p1}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;Ljava/lang/String;[C)V

    throw v1

    :cond_4
    new-instance v0, Lcom/c/a/a/m;

    const-string v1, "end of XML file"

    invoke-direct {v0, p0, v1, p1}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;Ljava/lang/String;[C)V

    throw v0
.end method

.method private static final a(C[C)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    aget-char v2, p1, v1

    if-ne p0, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Lcom/c/a/a/f;)Z
    .locals 2

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/c/a/a/f;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result v0

    const/16 v1, 0x3e

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/c/a/a/l;->b(C)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Lcom/c/a/a/l;->a(C)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/c/a/a/l;->v:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    :goto_1
    return p1

    :cond_3
    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    const/16 v0, 0x2f

    invoke-direct {p0, v0, v1}, Lcom/c/a/a/l;->b(CC)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/c/a/a/l;->b(Lcom/c/a/a/f;)V

    goto :goto_0
.end method

.method private aa()Z
    .locals 1

    sget-object v0, Lcom/c/a/a/l;->w:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result p0

    return p0
.end method

.method private ab()V
    .locals 5

    invoke-direct {p0}, Lcom/c/a/a/l;->W()V

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->aa()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/c/a/a/l;->N()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/c/a/a/l;->M()[C

    move-result-object v1

    iget-object v3, p0, Lcom/c/a/a/l;->O:Lcom/c/a/a/n;

    array-length v4, v1

    invoke-interface {v3, v1, v2, v4}, Lcom/c/a/a/n;->a([CII)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/c/a/a/l;->Y()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/c/a/a/l;->X()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/c/a/a/l;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/c/a/a/l;->v()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/c/a/a/l;->u()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/c/a/a/l;->t()V

    goto :goto_1

    :cond_6
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/c/a/a/l;->b(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->Z()Lcom/c/a/a/f;

    :goto_1
    invoke-direct {p0}, Lcom/c/a/a/l;->W()V

    goto :goto_0
.end method

.method private b(Lcom/c/a/a/f;)V
    .locals 5

    invoke-direct {p0}, Lcom/c/a/a/l;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/c/a/a/l;->E()V

    invoke-direct {p0}, Lcom/c/a/a/l;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/c/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/c/a/a/l;->C:Lcom/c/a/a/o;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, " contains attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "more than once"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/c/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/c/a/a/l;->b()I

    move-result p0

    invoke-interface {v2, v3, v4, p0}, Lcom/c/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/c/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final b(C)Z
    .locals 2

    iget v0, p0, Lcom/c/a/a/l;->I:I

    iget v1, p0, Lcom/c/a/a/l;->J:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->f()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/c/a/a/m;

    const-string v0, "unexpected end of expression."

    invoke-direct {p1, p0, v0}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/c/a/a/l;->H:[C

    iget p0, p0, Lcom/c/a/a/l;->I:I

    aget-char p0, v0, p0

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final b(CC)Z
    .locals 3

    iget v0, p0, Lcom/c/a/a/l;->I:I

    iget v1, p0, Lcom/c/a/a/l;->J:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/l;->f()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/l;->H:[C

    iget p0, p0, Lcom/c/a/a/l;->I:I

    aget-char p0, v0, p0

    if-eq p0, p1, :cond_1

    if-ne p0, p2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private final b(CCCC)Z
    .locals 3

    iget v0, p0, Lcom/c/a/a/l;->I:I

    iget v1, p0, Lcom/c/a/a/l;->J:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/l;->f()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/l;->H:[C

    iget p0, p0, Lcom/c/a/a/l;->I:I

    aget-char p0, v0, p0

    if-eq p0, p1, :cond_1

    if-eq p0, p2, :cond_1

    if-eq p0, p3, :cond_1

    if-ne p0, p4, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private final b([C)Z
    .locals 6

    array-length v0, p1

    iget v1, p0, Lcom/c/a/a/l;->J:I

    iget v2, p0, Lcom/c/a/a/l;->I:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(I)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/c/a/a/l;->E:I

    return v2

    :cond_0
    iget-object v1, p0, Lcom/c/a/a/l;->H:[C

    iget v3, p0, Lcom/c/a/a/l;->J:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-char v1, v1, v3

    iput v1, p0, Lcom/c/a/a/l;->E:I

    iget v1, p0, Lcom/c/a/a/l;->J:I

    iget v3, p0, Lcom/c/a/a/l;->I:I

    sub-int/2addr v1, v3

    if-ge v1, v0, :cond_1

    return v2

    :cond_1
    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_2

    return v4

    :cond_2
    iget-object v3, p0, Lcom/c/a/a/l;->H:[C

    iget v5, p0, Lcom/c/a/a/l;->I:I

    add-int/2addr v5, v1

    aget-char v3, v3, v5

    aget-char v5, p1, v1

    if-eq v3, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private c(Lcom/c/a/a/f;)V
    .locals 4

    sget-object v0, Lcom/c/a/a/l;->w:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/a/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/c/a/a/l;->C:Lcom/c/a/a/o;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "end tag ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") does not match begin tag ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/c/a/a/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/c/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/c/a/a/l;->b()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lcom/c/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    :cond_1
    const/16 p1, 0x3e

    invoke-direct {p0, p1}, Lcom/c/a/a/l;->a(C)V

    return-void
.end method

.method private static c(C)Z
    .locals 1

    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/c/a/a/l;->c(C)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/c/a/a/l;->c:[C

    invoke-static {p0, v0}, Lcom/c/a/a/l;->a(C[C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/c/a/a/l;->e(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static e(C)Z
    .locals 1

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x387

    if-eq p0, v0, :cond_0

    const/16 v0, 0x640

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe46

    if-eq p0, v0, :cond_0

    const/16 v0, 0xec6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3005

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x2d0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3031
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x309d
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30fc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private f()I
    .locals 6

    iget-boolean v0, p0, Lcom/c/a/a/l;->K:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/c/a/a/l;->J:I

    iget-object v2, p0, Lcom/c/a/a/l;->H:[C

    array-length v2, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/a/l;->J:I

    iput v0, p0, Lcom/c/a/a/l;->I:I

    :cond_1
    iget-object v0, p0, Lcom/c/a/a/l;->z:Ljava/io/Reader;

    iget-object v2, p0, Lcom/c/a/a/l;->H:[C

    iget v3, p0, Lcom/c/a/a/l;->J:I

    iget-object v4, p0, Lcom/c/a/a/l;->H:[C

    array-length v4, v4

    iget v5, p0, Lcom/c/a/a/l;->J:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/l;->K:Z

    return v1

    :cond_2
    iget v1, p0, Lcom/c/a/a/l;->J:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/c/a/a/l;->J:I

    return v0
.end method

.method private final g()C
    .locals 3

    iget v0, p0, Lcom/c/a/a/l;->I:I

    iget v1, p0, Lcom/c/a/a/l;->J:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->f()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/c/a/a/m;

    const-string v1, "unexpected end of expression."

    invoke-direct {v0, p0, v1}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/c/a/a/l;->H:[C

    iget v1, p0, Lcom/c/a/a/l;->I:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/c/a/a/l;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/c/a/a/l;->M:I

    :cond_2
    iget-object v0, p0, Lcom/c/a/a/l;->H:[C

    iget v1, p0, Lcom/c/a/a/l;->I:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/c/a/a/l;->I:I

    aget-char p0, v0, v1

    return p0
.end method

.method private final h()C
    .locals 2

    iget v0, p0, Lcom/c/a/a/l;->I:I

    iget v1, p0, Lcom/c/a/a/l;->J:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->f()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/c/a/a/m;

    const-string v1, "unexpected end of expression."

    invoke-direct {v0, p0, v1}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/c/a/a/l;->H:[C

    iget p0, p0, Lcom/c/a/a/l;->I:I

    aget-char p0, v0, p0

    return p0
.end method

.method private final i()V
    .locals 5

    const/16 v0, 0xa

    const/16 v1, 0xd

    const/16 v2, 0x9

    const/16 v3, 0x20

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/c/a/a/l;->a(CCCC)C

    :goto_0
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/c/a/a/l;->b(CCCC)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    goto :goto_0
.end method

.method private final j()Z
    .locals 4

    const/16 v0, 0x20

    const/16 v1, 0x9

    const/16 v2, 0xd

    const/16 v3, 0xa

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/c/a/a/l;->b(CCCC)Z

    move-result p0

    return p0
.end method

.method private k()Z
    .locals 1

    invoke-direct {p0}, Lcom/c/a/a/l;->h()C

    move-result p0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/c/a/a/l;->d:[Z

    aget-boolean p0, v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/c/a/a/l;->d(C)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private final l()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/c/a/a/l;->L:[C

    invoke-direct {p0}, Lcom/c/a/a/l;->m()C

    move-result v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/c/a/a/l;->k()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/c/a/a/l;->L:[C

    invoke-direct {v1, p0, v2, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Lcom/c/a/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/c/a/a/l;->L:[C

    invoke-virtual {v1, p0, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v3, 0xff

    if-lt v0, v3, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_2
    iget-object v3, p0, Lcom/c/a/a/l;->L:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move v0, v2

    :cond_3
    iget-object v3, p0, Lcom/c/a/a/l;->L:[C

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v5

    aput-char v5, v3, v0

    move v0, v4

    goto :goto_0
.end method

.method private m()C
    .locals 3

    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v0

    invoke-static {v0}, Lcom/c/a/a/l;->c(C)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/c/a/a/m;

    const-string v2, "letter, underscore, colon"

    invoke-direct {v1, p0, v0, v2}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;CLjava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return v0
.end method

.method private final n()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/c/a/a/l;->a(CC)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->Q()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/c/a/a/l;->N()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/c/a/a/l;->M()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private final o()Z
    .locals 2

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/c/a/a/l;->b(CC)Z

    move-result p0

    return p0
.end method

.method private final p()V
    .locals 2

    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/c/a/a/l;->h()C

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a(C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    goto :goto_0
.end method

.method private final q()V
    .locals 0

    invoke-direct {p0}, Lcom/c/a/a/l;->p()V

    return-void
.end method

.method private r()Z
    .locals 1

    invoke-direct {p0}, Lcom/c/a/a/l;->u()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->w()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private s()V
    .locals 2

    invoke-direct {p0}, Lcom/c/a/a/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/l;->t()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/l;->v()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/c/a/a/m;

    const-string v1, "expecting comment or processing instruction or space"

    invoke-direct {v0, p0, v1}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/l;Ljava/lang/String;)V

    throw v0
.end method

.method private final t()V
    .locals 1

    sget-object v0, Lcom/c/a/a/l;->e:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    :goto_0
    sget-object v0, Lcom/c/a/a/l;->f:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/c/a/a/l;->f:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    goto :goto_0
.end method

.method private final u()Z
    .locals 1

    sget-object v0, Lcom/c/a/a/l;->e:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result p0

    return p0
.end method

.method private final v()V
    .locals 1

    sget-object v0, Lcom/c/a/a/l;->g:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    :goto_0
    sget-object v0, Lcom/c/a/a/l;->h:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/c/a/a/l;->h:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    goto :goto_0
.end method

.method private final w()Z
    .locals 1

    sget-object v0, Lcom/c/a/a/l;->g:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result p0

    return p0
.end method

.method private x()V
    .locals 1

    invoke-direct {p0}, Lcom/c/a/a/l;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/l;->z()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/c/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/c/a/a/l;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/c/a/a/l;->H()V

    :goto_1
    invoke-direct {p0}, Lcom/c/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/c/a/a/l;->s()V

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/c/a/a/l;->s()V

    goto :goto_0
.end method

.method private y()Z
    .locals 1

    sget-object v0, Lcom/c/a/a/l;->i:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result p0

    return p0
.end method

.method private z()V
    .locals 3

    sget-object v0, Lcom/c/a/a/l;->j:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/c/a/a/l;->D()V

    invoke-direct {p0}, Lcom/c/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/l;->i()V

    :cond_0
    invoke-direct {p0}, Lcom/c/a/a/l;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/c/a/a/l;->C()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/l;->D:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/l;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/c/a/a/h;

    iget-object v2, p0, Lcom/c/a/a/l;->x:Ljava/lang/String;

    iget-object p0, p0, Lcom/c/a/a/l;->D:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p0}, Lcom/c/a/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    sget-object v0, Lcom/c/a/a/l;->h:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/c/a/a/l;->h:[C

    invoke-direct {p0, v0}, Lcom/c/a/a/l;->a([C)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/c/a/a/l;->g()C

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/l;->x:Ljava/lang/String;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/c/a/a/l;->M:I

    return p0
.end method

.method c()I
    .locals 0

    iget p0, p0, Lcom/c/a/a/l;->E:I

    return p0
.end method

.method final d()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method e()Lcom/c/a/a/o;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/l;->C:Lcom/c/a/a/o;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/l;->x:Ljava/lang/String;

    return-object p0
.end method
