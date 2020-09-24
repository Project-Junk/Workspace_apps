.class public final Lcom/android/settings/connecteddevice/usb/a;
.super Ljava/lang/Object;
.source "ConnectedUsbDeviceUpdater.java"


# instance fields
.field a:Landroidx/preference/Preference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public b:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private d:Lcom/android/settings/dashboard/DashboardFragment;

.field private e:Lcom/android/settings/connecteddevice/usb/b;

.field private f:Lcom/android/settings/connecteddevice/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V
    .locals 1

    .line 59
    new-instance v0, Lcom/android/settings/connecteddevice/usb/b;

    invoke-direct {v0, p1}, Lcom/android/settings/connecteddevice/usb/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/connecteddevice/usb/a;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;Lcom/android/settings/connecteddevice/usb/b;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;Lcom/android/settings/connecteddevice/usb/b;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$a$HQR7dZu63YSZo4fl1N9Fz0M9VeU;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$a$HQR7dZu63YSZo4fl1N9Fz0M9VeU;-><init>(Lcom/android/settings/connecteddevice/usb/a;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/a;->c:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$a;

    .line 65
    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/a;->d:Lcom/android/settings/dashboard/DashboardFragment;

    .line 66
    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/a;->f:Lcom/android/settings/connecteddevice/a;

    .line 67
    iput-object p4, p0, Lcom/android/settings/connecteddevice/usb/a;->e:Lcom/android/settings/connecteddevice/usb/b;

    .line 68
    new-instance p2, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    iget-object p3, p0, Lcom/android/settings/connecteddevice/usb/a;->c:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$a;

    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/a;->e:Lcom/android/settings/connecteddevice/usb/b;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$a;Lcom/android/settings/connecteddevice/usb/b;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/a;->b:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    return-void
.end method

.method private synthetic a(ZJII)V
    .locals 10

    if-eqz p1, :cond_b

    .line 49
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/a;->a:Landroidx/preference/Preference;

    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :goto_0
    const/4 p5, 0x1

    const-wide/16 v1, 0x8

    const-wide/16 v3, 0x10

    const-wide/16 v5, 0x20

    const-wide/16 v7, 0x4

    const v9, 0x7f1217c5

    if-eq p4, p5, :cond_5

    if-eq p4, v0, :cond_1

    goto :goto_1

    :cond_1
    cmp-long p4, p2, v7

    if-nez p4, :cond_2

    const v9, 0x7f1217c6

    goto :goto_1

    :cond_2
    cmp-long p4, p2, v5

    if-nez p4, :cond_3

    const v9, 0x7f1217cb

    goto :goto_1

    :cond_3
    cmp-long p4, p2, v3

    if-nez p4, :cond_4

    const v9, 0x7f1217c8

    goto :goto_1

    :cond_4
    cmp-long p2, p2, v1

    if-nez p2, :cond_a

    const v9, 0x7f1217c3

    goto :goto_1

    :cond_5
    cmp-long p4, p2, v7

    if-nez p4, :cond_6

    const v9, 0x7f1217c7

    goto :goto_1

    :cond_6
    cmp-long p4, p2, v5

    if-nez p4, :cond_7

    const v9, 0x7f1217cc

    goto :goto_1

    :cond_7
    cmp-long p4, p2, v3

    if-nez p4, :cond_8

    const v9, 0x7f1217c9

    goto :goto_1

    :cond_8
    cmp-long p2, p2, v1

    if-nez p2, :cond_9

    const v9, 0x7f1217c4

    goto :goto_1

    :cond_9
    const v9, 0x7f1217ca

    :cond_a
    :goto_1
    invoke-virtual {p1, v9}, Landroidx/preference/Preference;->setSummary(I)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/a;->f:Lcom/android/settings/connecteddevice/a;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/a;->a:Landroidx/preference/Preference;

    invoke-interface {p1, p2}, Lcom/android/settings/connecteddevice/a;->onDeviceAdded(Landroidx/preference/Preference;)V

    return-void

    .line 53
    :cond_b
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/a;->f:Lcom/android/settings/connecteddevice/a;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/a;->a:Landroidx/preference/Preference;

    invoke-interface {p1, p2}, Lcom/android/settings/connecteddevice/a;->onDeviceRemoved(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;)Z
    .locals 2

    .line 87
    new-instance p1, Lcom/android/settings/core/f;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/a;->d:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f12077a

    .line 2063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/a;->d:Lcom/android/settings/dashboard/DashboardFragment;

    .line 90
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$1WV2nTv4KPzNLLBD6LvwCwVfSeI(Lcom/android/settings/connecteddevice/usb/a;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/usb/a;->a(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$HQR7dZu63YSZo4fl1N9Fz0M9VeU(Lcom/android/settings/connecteddevice/usb/a;ZJII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/connecteddevice/usb/a;->a(ZJII)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 82
    new-instance v0, Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/a;->a:Landroidx/preference/Preference;

    .line 83
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/a;->a:Landroidx/preference/Preference;

    const v0, 0x7f1217bf

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/a;->a:Landroidx/preference/Preference;

    const v0, 0x7f08086e

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(I)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/a;->a:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$a$1WV2nTv4KPzNLLBD6LvwCwVfSeI;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$a$1WV2nTv4KPzNLLBD6LvwCwVfSeI;-><init>(Lcom/android/settings/connecteddevice/usb/a;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1101
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/a;->b:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->a()V

    return-void
.end method
