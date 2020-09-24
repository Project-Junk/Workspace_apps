.class public final Lcom/color/eyeprotect/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/common/recovery/ICommonBackupInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/color/eyeprotect/e/d;->a:Lcom/color/eyeprotect/e/d;

    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/e/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
