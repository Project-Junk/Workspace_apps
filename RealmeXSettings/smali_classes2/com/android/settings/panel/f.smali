.class public final Lcom/android/settings/panel/f;
.super Ljava/lang/Object;
.source "PanelFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/panel/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/panel/d;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, -0x1

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.settings.panel.action.WIFI"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_1
    const-string v1, "com.android.settings.panel.action.MEDIA_OUTPUT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v5

    goto :goto_0

    :sswitch_2
    const-string v1, "android.settings.panel.action.VOLUME"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_3
    const-string v1, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_4
    const-string v1, "android.settings.panel.action.NFC"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    .line 2043
    new-instance p2, Lcom/android/settings/panel/h;

    invoke-direct {p2, p1}, Lcom/android/settings/panel/h;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "No matching panel for: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2041
    :cond_3
    new-instance p2, Lcom/android/settings/panel/i;

    invoke-direct {p2, p1}, Lcom/android/settings/panel/i;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 2038
    :cond_4
    new-instance p2, Lcom/android/settings/panel/c;

    invoke-direct {p2, p1}, Lcom/android/settings/panel/c;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 1045
    :cond_5
    new-instance p2, Lcom/android/settings/panel/b;

    invoke-direct {p2, p1, p3}, Lcom/android/settings/panel/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p2

    .line 1043
    :cond_6
    new-instance p2, Lcom/android/settings/panel/a;

    invoke-direct {p2, p1}, Lcom/android/settings/panel/a;-><init>(Landroid/content/Context;)V

    return-object p2

    :sswitch_data_0
    .sparse-switch
        0x3f46fa9 -> :sswitch_4
        0x1babcc93 -> :sswitch_3
        0x4878fc3c -> :sswitch_2
        0x6ce62c0b -> :sswitch_1
        0x7a9da8b7 -> :sswitch_0
    .end sparse-switch
.end method
