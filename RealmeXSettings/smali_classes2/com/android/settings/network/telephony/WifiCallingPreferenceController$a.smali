.class final Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/WifiCallingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;Landroid/os/Looper;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;->a:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    .line 177
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;->mSubId:Ljava/lang/Integer;

    .line 187
    iget-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;->a:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->access$100(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;->a:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->access$000(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
