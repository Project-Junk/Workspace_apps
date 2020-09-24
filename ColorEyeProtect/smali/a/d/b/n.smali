.class public La/d/b/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:La/d/b/o;

.field private static final b:[La/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/d/b/o;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, La/d/b/o;

    invoke-direct {v0}, La/d/b/o;-><init>()V

    :goto_0
    sput-object v0, La/d/b/n;->a:La/d/b/o;

    const/4 v0, 0x0

    new-array v0, v0, [La/f/c;

    sput-object v0, La/d/b/n;->b:[La/f/c;

    return-void
.end method

.method public static a(Ljava/lang/Class;)La/f/c;
    .locals 1

    sget-object v0, La/d/b/n;->a:La/d/b/o;

    invoke-virtual {v0, p0}, La/d/b/o;->a(Ljava/lang/Class;)La/f/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(La/d/b/j;)La/f/g;
    .locals 1

    sget-object v0, La/d/b/n;->a:La/d/b/o;

    invoke-virtual {v0, p0}, La/d/b/o;->a(La/d/b/j;)La/f/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(La/d/b/l;)La/f/j;
    .locals 1

    sget-object v0, La/d/b/n;->a:La/d/b/o;

    invoke-virtual {v0, p0}, La/d/b/o;->a(La/d/b/l;)La/f/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(La/d/b/f;)Ljava/lang/String;
    .locals 1

    sget-object v0, La/d/b/n;->a:La/d/b/o;

    invoke-virtual {v0, p0}, La/d/b/o;->a(La/d/b/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(La/d/b/h;)Ljava/lang/String;
    .locals 1

    sget-object v0, La/d/b/n;->a:La/d/b/o;

    invoke-virtual {v0, p0}, La/d/b/o;->a(La/d/b/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
