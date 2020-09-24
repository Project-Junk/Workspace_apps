.class public final Lcom/color/eyeprotect/c/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field static final synthetic a:[La/f/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [La/f/h;

    new-instance v1, La/d/b/m;

    const-class v2, Lcom/color/eyeprotect/c/a$b;

    invoke-static {v2}, La/d/b/n;->a(Ljava/lang/Class;)La/f/c;

    move-result-object v2

    const-string v3, "instance"

    const-string v4, "getInstance()Lcom/color/eyeprotect/manager/AiCurveManager;"

    invoke-direct {v1, v2, v3, v4}, La/d/b/m;-><init>(La/f/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, La/d/b/n;->a(La/d/b/l;)La/f/j;

    move-result-object v1

    check-cast v1, La/f/h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/color/eyeprotect/c/a$b;->a:[La/f/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(La/d/b/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/c/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/color/eyeprotect/c/a;
    .locals 2

    invoke-static {}, Lcom/color/eyeprotect/c/a;->c()La/e;

    move-result-object p0

    sget-object v0, Lcom/color/eyeprotect/c/a;->a:Lcom/color/eyeprotect/c/a$b;

    sget-object v0, Lcom/color/eyeprotect/c/a$b;->a:[La/f/h;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0}, La/e;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/color/eyeprotect/c/a;

    return-object p0
.end method
