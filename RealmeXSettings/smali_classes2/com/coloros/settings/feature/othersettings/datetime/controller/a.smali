.class public Lcom/coloros/settings/feature/othersettings/datetime/controller/a;
.super Lcom/android/settings/datetime/e;
.source "ColorTimeZonePreferenceController.java"


# instance fields
.field public a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/e;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/AutoTimeZonePreferenceController;)V

    return-void
.end method


# virtual methods
.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 37
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    if-nez v0, :cond_1

    return-void

    .line 44
    :cond_1
    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    .line 45
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/l;->a(Landroid/content/Context;)Z

    move-result p1

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/l;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez p1, :cond_3

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 52
    :goto_1
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->mContext:Landroid/content/Context;

    const v5, 0x7f080410

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {v3, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setSelectable(Z)V

    const v1, 0x7f0d00a7

    if-nez p1, :cond_5

    if-eqz v0, :cond_6

    .line 56
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setLayoutResource(I)V

    if-eqz v0, :cond_6

    .line 58
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setEnabled(Z)V

    :cond_6
    if-nez v0, :cond_7

    .line 65
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setLayoutResource(I)V

    .line 69
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/l;->a(Landroid/content/Context;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
