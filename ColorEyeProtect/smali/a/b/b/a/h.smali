.class final La/b/b/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/b/a/h$a;
    }
.end annotation


# static fields
.field public static a:La/b/b/a/h$a;

.field public static final b:La/b/b/a/h;

.field private static final c:La/b/b/a/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/b/b/a/h;

    invoke-direct {v0}, La/b/b/a/h;-><init>()V

    sput-object v0, La/b/b/a/h;->b:La/b/b/a/h;

    new-instance v0, La/b/b/a/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, La/b/b/a/h$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, La/b/b/a/h;->c:La/b/b/a/h$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(La/b/b/a/a;)La/b/b/a/h$a;
    .locals 4

    :try_start_0
    const-class p0, Ljava/lang/Class;

    const-string v0, "getModule"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "java.lang.Module"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDescriptor"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v2, "java.lang.module.ModuleDescriptor"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "name"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-instance v1, La/b/b/a/h$a;

    invoke-direct {v1, p0, v0, p1}, La/b/b/a/h$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v1, La/b/b/a/h;->a:La/b/b/a/h$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    sget-object p0, La/b/b/a/h;->c:La/b/b/a/h$a;

    sput-object p0, La/b/b/a/h;->a:La/b/b/a/h$a;

    return-object p0
.end method


# virtual methods
.method public final a(La/b/b/a/a;)Ljava/lang/String;
    .locals 4

    const-string v0, "continuation"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La/b/b/a/h;->a:La/b/b/a/h$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, La/b/b/a/h;->b(La/b/b/a/a;)La/b/b/a/h$a;

    move-result-object v0

    :goto_0
    sget-object p0, La/b/b/a/h;->c:La/b/b/a/h$a;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, v0, La/b/b/a/h$a;->a:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p1, v0, La/b/b/a/h$a;->b:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_4

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p1, v0, La/b/b/a/h$a;->c:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    instance-of p1, p0, Ljava/lang/String;

    if-nez p1, :cond_3

    move-object p0, v1

    :cond_3
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_4
    return-object v1
.end method
