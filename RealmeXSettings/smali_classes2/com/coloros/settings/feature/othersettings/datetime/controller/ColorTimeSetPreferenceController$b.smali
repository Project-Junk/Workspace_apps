.class final Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$b;
.super Lcom/coloros/settings/utils/be;
.source "ColorTimeSetPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 4

    .line 223
    check-cast p2, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    .line 1230
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1231
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1232
    invoke-virtual {p2}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage timeZone:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorTimeSetPreferenceController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 1235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2109
    invoke-virtual {p2}, Lcom/android/settings/DateTimeSettings;->b_()V

    .line 2091
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 2092
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 2093
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 2094
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/l;->a(Landroid/content/Context;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    .line 2095
    const-class v2, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;

    invoke-virtual {p2, v2}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;

    .line 3076
    iget-object v3, v2, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    if-eqz v3, :cond_0

    .line 3077
    iget-object v2, v2, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 2097
    :cond_0
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/l;->a(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    .line 2098
    const-class v0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;

    invoke-virtual {p2, v0}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;

    .line 3115
    iget-object v0, p2, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    if-eqz v0, :cond_1

    .line 3116
    iget-object p2, p2, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 1238
    :cond_2
    invoke-virtual {p2}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->c()V

    :cond_3
    return-void
.end method
