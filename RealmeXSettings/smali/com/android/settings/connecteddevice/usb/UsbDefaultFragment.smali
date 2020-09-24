.class public Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "UsbDefaultFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/connecteddevice/usb/b;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Landroid/net/ConnectivityManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$a;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$a;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->c:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/g;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/android/settings/connecteddevice/usb/e;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/settings/connecteddevice/usb/e;->e:Ljava/util/Map;

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 87
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1164
    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v5

    .line 92
    iget-object v6, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->a:Lcom/android/settings/connecteddevice/usb/b;

    invoke-virtual {v6, v2, v3}, Lcom/android/settings/connecteddevice/usb/b;->c(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    new-instance v2, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x2

    .line 2169
    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 122
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->a:Lcom/android/settings/connecteddevice/usb/b;

    .line 3083
    iget-object p1, p1, Lcom/android/settings/connecteddevice/usb/b;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    move-result-wide v2

    .line 122
    iput-wide v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->d:J

    .line 123
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const-wide/16 v3, 0x20

    cmp-long p1, v0, v3

    if-nez p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->b:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->c:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$a;

    invoke-virtual {p1, v2, v2, v0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->a:Lcom/android/settings/connecteddevice/usb/b;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/connecteddevice/usb/b;->b(J)V

    :cond_1
    :goto_0
    return v2
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->a:Lcom/android/settings/connecteddevice/usb/b;

    .line 2091
    iget-object v0, v0, Lcom/android/settings/connecteddevice/usb/b;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    .line 2164
    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x520

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150130

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lcom/android/settings/connecteddevice/usb/b;

    invoke-direct {v0, p1}, Lcom/android/settings/connecteddevice/usb/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->a:Lcom/android/settings/connecteddevice/usb/b;

    .line 57
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->b:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->useColorStyle()Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    new-instance p1, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;-><init>(Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 67
    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    const p2, 0x7f1217b9

    .line 68
    invoke-virtual {p1, p2}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
