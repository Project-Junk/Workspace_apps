.class public Lcom/android/settings/wifi/p2p/WifiP2pPeer;
.super Landroidx/preference/Preference;
.source "WifiP2pPeer.java"


# static fields
.field private static final b:[I


# instance fields
.field public a:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final c:I

.field private d:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 32
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f04051c

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    const p2, 0x7f0d0285

    .line 43
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setWidgetLayoutResource(I)V

    const/16 p2, 0x3c

    .line 44
    iput p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->c:I

    .line 45
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 46
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030114

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 3

    .line 69
    instance-of v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 72
    :cond_0
    check-cast p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v2, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v0, v2, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    return v1

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->compareTo(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0607

    .line 57
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->d:Landroid/widget/ImageView;

    .line 58
    iget p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->c:I

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 59
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->d:Landroid/widget/ImageView;

    const v1, 0x7f080a2f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->d:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->b:[I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 64
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->d:Landroid/widget/ImageView;

    .line 1088
    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->c:I

    if-ne v1, v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    .line 1091
    invoke-static {v1, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 64
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method
