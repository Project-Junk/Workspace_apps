.class public final Lcom/android/settings/connecteddevice/usb/e;
.super Lcom/android/settings/connecteddevice/usb/c;
.source "UsbDetailsFunctionsController.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/usb/e$a;
    }
.end annotation


# static fields
.field static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field f:Lcom/android/settings/connecteddevice/usb/e$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field g:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private h:Landroidx/preference/PreferenceCategory;

.field private i:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    sput-object v0, Lcom/android/settings/connecteddevice/usb/e;->e:Ljava/util/Map;

    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f1217d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/settings/connecteddevice/usb/e;->e:Ljava/util/Map;

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f1217dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/settings/connecteddevice/usb/e;->e:Ljava/util/Map;

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f1217d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/settings/connecteddevice/usb/e;->e:Ljava/util/Map;

    const-wide/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f1217d9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/settings/connecteddevice/usb/e;->e:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f1217d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/b;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/c;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/b;)V

    .line 63
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/e;->i:Landroid/net/ConnectivityManager;

    .line 64
    new-instance p1, Lcom/android/settings/connecteddevice/usb/e$a;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/usb/e$a;-><init>(Lcom/android/settings/connecteddevice/usb/e;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/e;->f:Lcom/android/settings/connecteddevice/usb/e$a;

    .line 65
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/e;->c:Lcom/android/settings/connecteddevice/usb/b;

    .line 1083
    iget-object p1, p1, Lcom/android/settings/connecteddevice/usb/b;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    move-result-wide p1

    .line 65
    iput-wide p1, p0, Lcom/android/settings/connecteddevice/usb/e;->g:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 5

    .line 112
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 3169
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 113
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/e;->c:Lcom/android/settings/connecteddevice/usb/b;

    .line 4083
    iget-object v2, v2, Lcom/android/settings/connecteddevice/usb/b;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 114
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v4

    if-nez v4, :cond_2

    .line 115
    iput-wide v2, p0, Lcom/android/settings/connecteddevice/usb/e;->g:J

    const-wide/16 v2, 0x20

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/e;->h:Landroidx/preference/PreferenceCategory;

    iget-wide v1, p0, Lcom/android/settings/connecteddevice/usb/e;->g:J

    .line 4164
    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 124
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/e;->i:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/e;->f:Lcom/android/settings/connecteddevice/usb/e$a;

    invoke-virtual {p1, v1, v1, v0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    return-void

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/e;->c:Lcom/android/settings/connecteddevice/usb/b;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/connecteddevice/usb/b;->a(J)V

    :cond_2
    return-void
.end method

.method protected final a(ZJII)V
    .locals 6

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-eq p5, p1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/e;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p4}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/e;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    .line 98
    :goto_1
    sget-object p1, Lcom/android/settings/connecteddevice/usb/e;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 99
    sget-object p5, Lcom/android/settings/connecteddevice/usb/e;->e:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    .line 1164
    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v3

    .line 2078
    iget-object v4, p0, Lcom/android/settings/connecteddevice/usb/e;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/RadioButtonPreference;

    if-nez v4, :cond_2

    .line 2080
    new-instance v4, Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v5, p0, Lcom/android/settings/connecteddevice/usb/e;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 2081
    invoke-virtual {v4, v3}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 2082
    invoke-virtual {v4, p5}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    .line 3069
    iput-object p0, v4, Lcom/android/settings/widget/RadioButtonPreference;->a:Lcom/android/settings/widget/RadioButtonPreference$a;

    .line 2084
    iget-object p5, p0, Lcom/android/settings/connecteddevice/usb/e;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p5, v4}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 102
    :cond_2
    iget-object p5, p0, Lcom/android/settings/connecteddevice/usb/e;->c:Lcom/android/settings/connecteddevice/usb/b;

    invoke-virtual {p5, v1, v2}, Lcom/android/settings/connecteddevice/usb/b;->c(J)Z

    move-result p5

    if-eqz p5, :cond_4

    cmp-long p5, p2, v1

    if-nez p5, :cond_3

    move p5, p4

    goto :goto_3

    :cond_3
    move p5, v0

    .line 103
    :goto_3
    invoke-virtual {v4, p5}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    goto :goto_2

    .line 105
    :cond_4
    iget-object p5, p0, Lcom/android/settings/connecteddevice/usb/e;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p5, v4}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/c;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/e;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/e;->h:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "usb_details_functions"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 139
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
