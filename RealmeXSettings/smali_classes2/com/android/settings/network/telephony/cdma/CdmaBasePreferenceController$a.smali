.class public final Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$a;
.super Landroid/database/ContentObserver;
.source "CdmaBasePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$a;->a:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;

    .line 98
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 104
    iget-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$a;->a:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;

    iget-object v0, p1, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
