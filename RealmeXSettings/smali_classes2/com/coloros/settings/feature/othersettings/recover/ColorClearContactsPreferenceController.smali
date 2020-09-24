.class public Lcom/coloros/settings/feature/othersettings/recover/ColorClearContactsPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorClearContactsPreferenceController.java"


# static fields
.field public static final KEY_CLEAR_CONTACTS_DATA:Ljava/lang/String; = "clear_contacts_data"


# instance fields
.field private final mResetHost:Lcom/coloros/settings/feature/othersettings/recover/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;)V
    .locals 1

    const-string v0, "clear_contacts_data"

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearContactsPreferenceController;->mResetHost:Lcom/coloros/settings/feature/othersettings/recover/h;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearContactsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/ba;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clear_contacts_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearContactsPreferenceController;->mResetHost:Lcom/coloros/settings/feature/othersettings/recover/h;

    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/d;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/recover/d;-><init>()V

    invoke-interface {p1, v0}, Lcom/coloros/settings/feature/othersettings/recover/h;->a(Lcom/coloros/settings/feature/othersettings/recover/j;)V

    const/4 p1, 0x1

    return p1
.end method
