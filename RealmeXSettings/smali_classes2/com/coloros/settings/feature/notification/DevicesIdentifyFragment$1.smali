.class final Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$1;
.super Ljava/lang/Object;
.source "DevicesIdentifyFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$1;->a:Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 81
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$1;->a:Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->a(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "openid_toggle"

    invoke-static {v0, v2, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 84
    iget-object p2, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$1;->a:Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "restrict_advertise_switch"

    invoke-virtual {p2, v0, p1}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
