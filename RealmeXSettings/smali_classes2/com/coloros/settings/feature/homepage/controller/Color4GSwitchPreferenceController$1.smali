.class final Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController$1;
.super Ljava/lang/Object;
.source "Color4GSwitchPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 60
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->access$000(Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p1

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->access$100(Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->access$002(Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;Landroid/telephony/ColorOSTelephonyManager;)Landroid/telephony/ColorOSTelephonyManager;

    .line 74
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->access$000(Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p1

    invoke-static {}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->access$200()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/telephony/ColorOSTelephonyManager;->colorSetPreferredNetworkType(II)I

    .line 76
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->access$300(Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "e="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Color4GSwitchPreferenceController"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
