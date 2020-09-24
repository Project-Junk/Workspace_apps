.class final Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1$1;
.super Ljava/lang/Object;
.source "PrivateInfoProtectPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;I)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1$1;->b:Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;

    iput p2, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1$1;->b:Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;

    iget-object v0, v0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;->b:Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->access$000(Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1$1;->b:Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;

    iget-object v0, v0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;->b:Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;

    iget-object v1, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1$1;->b:Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;

    iget-object v1, v1, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;->a:Landroidx/preference/PreferenceScreen;

    iget v2, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1$1;->a:I

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->access$100(Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;Landroidx/preference/PreferenceScreen;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivateInfoProtectPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
