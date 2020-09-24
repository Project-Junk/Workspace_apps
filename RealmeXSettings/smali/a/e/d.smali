.class public final La/e/d;
.super La/e/b;
.source "Ranges.kt"

# interfaces
.implements La/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/e/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/e/b;",
        "La/e/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:La/e/d$a;

.field private static final f:La/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/e/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/e/d$a;-><init>(B)V

    sput-object v0, La/e/d;->e:La/e/d$a;

    .line 58
    new-instance v0, La/e/d;

    invoke-direct {v0}, La/e/d;-><init>()V

    sput-object v0, La/e/d;->f:La/e/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0, v0}, La/e/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 3087
    iget v0, p0, La/e/b;->a:I

    .line 3092
    iget v1, p0, La/e/b;->b:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 48
    instance-of v0, p1, La/e/d;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, La/e/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, La/e/d;

    invoke-virtual {v0}, La/e/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4087
    :cond_0
    iget v0, p0, La/e/b;->a:I

    .line 48
    check-cast p1, La/e/d;

    .line 5087
    iget v1, p1, La/e/b;->a:I

    if-ne v0, v1, :cond_2

    .line 5092
    iget v0, p0, La/e/b;->b:I

    .line 6092
    iget p1, p1, La/e/b;->b:I

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic getEndInclusive()Ljava/lang/Comparable;
    .locals 1

    .line 2092
    iget v0, p0, La/e/b;->b:I

    .line 2041
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public final synthetic getStart()Ljava/lang/Comparable;
    .locals 1

    .line 1087
    iget v0, p0, La/e/b;->a:I

    .line 1040
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 52
    invoke-virtual {p0}, La/e/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 7087
    :cond_0
    iget v0, p0, La/e/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 7092
    iget v1, p0, La/e/b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8087
    iget v1, p0, La/e/b;->a:I

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8092
    iget v1, p0, La/e/b;->b:I

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
