.class public final Lcom/android/settings/network/telephony/VideoCallingPreferenceController$a;
.super Landroid/database/ContentObserver;
.source "VideoCallingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/VideoCallingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$a;->a:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    .line 179
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 184
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 185
    iget-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$a;->a:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->access$000(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
