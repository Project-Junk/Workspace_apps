.class final Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;
.super Landroid/telephony/PhoneStateListener;
.source "VideoCallingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/VideoCallingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;Landroid/os/Looper;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;->a:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    .line 155
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;->mSubId:Ljava/lang/Integer;

    .line 165
    iget-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;->a:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->access$100(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;->a:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->access$000(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
