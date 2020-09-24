.class final Lcom/android/settings/network/PrivateDnsPreferenceController$a;
.super Landroid/database/ContentObserver;
.source "PrivateDnsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/PrivateDnsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/PrivateDnsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/PrivateDnsPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$a;->a:Lcom/android/settings/network/PrivateDnsPreferenceController;

    .line 157
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$a;->a:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$a;->a:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/network/PrivateDnsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
