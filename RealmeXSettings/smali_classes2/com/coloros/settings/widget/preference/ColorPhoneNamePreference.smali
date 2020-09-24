.class public Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;
.super Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
.source "ColorPhoneNamePreference.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/IntentFilter;

.field private final c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance p2, Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference$1;-><init>(Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;)V

    iput-object p2, p0, Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;->c:Landroid/content/BroadcastReceiver;

    const p2, 0x7f0d00c5

    .line 34
    invoke-virtual {p0, p2}, Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;->setWidgetLayoutResource(I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;->a:Landroid/content/Context;

    .line 50
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;->b:Landroid/content/IntentFilter;

    const-string p1, "OppoPhoneNamePreference"

    const-string v0, "initialize"

    .line 51
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;)V
    .locals 3

    .line 1076
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1077
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OppoPhoneNamePreference"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/ColorPhoneNamePreference;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
