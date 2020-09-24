.class final Lcom/android/settings/network/telephony/ApnPreferenceController$a;
.super Landroid/database/ContentObserver;
.source "ApnPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/ApnPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/telephony/ApnPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/ApnPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController$a;->a:Lcom/android/settings/network/telephony/ApnPreferenceController;

    .line 128
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController$a;->a:Lcom/android/settings/network/telephony/ApnPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/ApnPreferenceController;->access$000(Lcom/android/settings/network/telephony/ApnPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/ApnPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
