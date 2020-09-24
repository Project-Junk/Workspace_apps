.class final Lcom/coloros/settings/privacy/PrivacySettingsFragment$1;
.super Ljava/lang/Object;
.source "PrivacySettingsFragment.java"

# interfaces
.implements Lcom/coloros/settings/feature/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/PrivacySettingsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$1;->a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$1;->a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->a(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Lcom/coloros/settings/feature/c/a;

    move-result-object v0

    const-string v1, "privacy_password"

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/c/a;->a(Ljava/lang/String;)V

    return-void
.end method
