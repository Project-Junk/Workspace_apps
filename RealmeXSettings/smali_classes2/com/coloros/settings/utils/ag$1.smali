.class final Lcom/coloros/settings/utils/ag$1;
.super Ljava/lang/Object;
.source "OppoLockScreenUtil.java"

# interfaces
.implements Lcom/coloros/settings/privacy/a/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Lcom/coloros/settings/privacy/a/g;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/a/g;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/a/g;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/coloros/settings/utils/ag$1;->a:Lcom/coloros/settings/privacy/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z[B)V
    .locals 1

    const-string v0, "OppoLockScreenUtil"

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/coloros/settings/utils/ag$1;->a:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/a/g;->a([B)Z

    move-result p1

    .line 190
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "setBindEmailState clear "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "setBindEmailState checkToken fail "

    .line 192
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
