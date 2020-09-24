.class public final Lcom/android/settings/wifi/tether/b;
.super Ljava/lang/Object;
.source "WifiDeviceNameTextValidator.java"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isTextValid(Ljava/lang/String;)Z
    .locals 3

    .line 28
    invoke-static {p1}, Lcom/android/settings/wifi/i;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1050
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :goto_0
    move p1, v2

    goto :goto_1

    .line 1053
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_1
    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1
.end method
