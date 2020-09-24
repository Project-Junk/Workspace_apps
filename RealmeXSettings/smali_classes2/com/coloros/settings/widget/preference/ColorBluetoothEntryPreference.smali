.class public Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;
.super Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
.source "ColorBluetoothEntryPreference.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/IntentFilter;

.field public c:Landroid/bluetooth/BluetoothAdapter;

.field public final i:Landroid/content/BroadcastReceiver;

.field private k:Landroid/bluetooth/BluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance p2, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference$1;-><init>(Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;)V

    iput-object p2, p0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->i:Landroid/content/BroadcastReceiver;

    .line 41
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance p2, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference$1;-><init>(Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;)V

    iput-object p2, p0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->i:Landroid/content/BroadcastReceiver;

    .line 36
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 50
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->a:Landroid/content/Context;

    const-string v0, "bluetooth"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->k:Landroid/bluetooth/BluetoothManager;

    .line 54
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->k:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->c:Landroid/bluetooth/BluetoothAdapter;

    .line 55
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->b:Landroid/content/IntentFilter;

    .line 56
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->b:Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;I)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f1203d6

    .line 83
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->setSummary(I)V

    return-void

    :cond_1
    const p1, 0x7f1203d4

    .line 86
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method public setSummary(I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
