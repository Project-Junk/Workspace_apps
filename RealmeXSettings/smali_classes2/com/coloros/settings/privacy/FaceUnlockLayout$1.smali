.class final Lcom/coloros/settings/privacy/FaceUnlockLayout$1;
.super Ljava/lang/Object;
.source "FaceUnlockLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/FaceUnlockLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/FaceUnlockLayout;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/FaceUnlockLayout;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout$1;->a:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick mChecking = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout$1;->a:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    invoke-static {v1}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->a(Lcom/coloros/settings/privacy/FaceUnlockLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceUnlockLayout"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout$1;->a:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    invoke-static {v0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->a(Lcom/coloros/settings/privacy/FaceUnlockLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout$1;->a:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    invoke-static {v0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b(Lcom/coloros/settings/privacy/FaceUnlockLayout;)Lcom/coloros/settings/privacy/FaceUnlockLayout$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout$1;->a:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    invoke-static {v0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b(Lcom/coloros/settings/privacy/FaceUnlockLayout;)Lcom/coloros/settings/privacy/FaceUnlockLayout$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/coloros/settings/privacy/FaceUnlockLayout$a;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
