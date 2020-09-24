.class final Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;
.super Ljava/lang/Object;
.source "PrivateInfoProtectPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->updatePrivacyInfoAppStatus(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/PreferenceScreen;

.field final synthetic b:Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;->b:Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;

    iput-object p2, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;->a:Landroidx/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;->b:Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->access$000(Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/a/b;->b(Landroid/content/Context;)I

    move-result v0

    .line 80
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPrivacyInfoApps() return: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrivateInfoProtectPreferenceController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;->b:Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;

    invoke-static {v1}, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->access$000(Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1$1;

    invoke-direct {v2, p0, v0}, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1$1;-><init>(Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
