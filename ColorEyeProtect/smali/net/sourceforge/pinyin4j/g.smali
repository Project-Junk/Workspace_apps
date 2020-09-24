.class Lnet/sourceforge/pinyin4j/g;
.super Ljava/lang/Object;


# static fields
.field static final a:Lnet/sourceforge/pinyin4j/g;

.field static final b:Lnet/sourceforge/pinyin4j/g;

.field static final c:Lnet/sourceforge/pinyin4j/g;

.field static final d:Lnet/sourceforge/pinyin4j/g;

.field static final e:Lnet/sourceforge/pinyin4j/g;

.field static final f:Lnet/sourceforge/pinyin4j/g;


# instance fields
.field protected g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sourceforge/pinyin4j/g;

    const-string v1, "Hanyu"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/g;->a:Lnet/sourceforge/pinyin4j/g;

    new-instance v0, Lnet/sourceforge/pinyin4j/g;

    const-string v1, "Wade"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/g;->b:Lnet/sourceforge/pinyin4j/g;

    new-instance v0, Lnet/sourceforge/pinyin4j/g;

    const-string v1, "MPSII"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/g;->c:Lnet/sourceforge/pinyin4j/g;

    new-instance v0, Lnet/sourceforge/pinyin4j/g;

    const-string v1, "Yale"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/g;->d:Lnet/sourceforge/pinyin4j/g;

    new-instance v0, Lnet/sourceforge/pinyin4j/g;

    const-string v1, "Tongyong"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/g;->e:Lnet/sourceforge/pinyin4j/g;

    new-instance v0, Lnet/sourceforge/pinyin4j/g;

    const-string v1, "Gwoyeu"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/g;->f:Lnet/sourceforge/pinyin4j/g;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sourceforge/pinyin4j/g;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sourceforge/pinyin4j/g;->g:Ljava/lang/String;

    return-object p0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/g;->g:Ljava/lang/String;

    return-void
.end method
