.class final Lcom/color/eyeprotect/c/a$c;
.super La/d/b/h;

# interfaces
.implements La/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/d/b/h;",
        "La/d/a/a<",
        "Lcom/color/eyeprotect/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/color/eyeprotect/c/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/color/eyeprotect/c/a$c;

    invoke-direct {v0}, Lcom/color/eyeprotect/c/a$c;-><init>()V

    sput-object v0, Lcom/color/eyeprotect/c/a$c;->a:Lcom/color/eyeprotect/c/a$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/d/b/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/color/eyeprotect/c/a;
    .locals 3

    new-instance p0, Lcom/color/eyeprotect/c/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/color/eyeprotect/c/a;-><init>(La/d/b/e;)V

    invoke-static {}, Lcom/color/eyeprotect/ColorEyeProtectApp;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ColorEyeProtectApp.getsApplicationContext()"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/color/eyeprotect/c/a;->a(Lcom/color/eyeprotect/c/a;Landroid/content/Context;)V

    sget-object v0, Lcom/color/eyeprotect/util/a;->a:Lcom/color/eyeprotect/util/a;

    invoke-static {p0}, Lcom/color/eyeprotect/c/a;->f(Lcom/color/eyeprotect/c/a;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120035

    invoke-virtual {v0, v1, v2}, Lcom/color/eyeprotect/util/a;->a(Landroid/content/Context;I)Lcom/color/eyeprotect/util/g;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/color/eyeprotect/c/a;->a(Lcom/color/eyeprotect/c/a;Lcom/color/eyeprotect/util/g;)V

    return-object p0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/a$c;->a()Lcom/color/eyeprotect/c/a;

    move-result-object p0

    return-object p0
.end method
