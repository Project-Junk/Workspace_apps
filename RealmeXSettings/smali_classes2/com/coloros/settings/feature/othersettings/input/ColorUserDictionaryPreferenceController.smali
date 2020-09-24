.class public Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryPreferenceController;
.super Lcom/android/settings/language/UserDictionaryPreferenceController;
.source "ColorUserDictionaryPreferenceController.java"


# static fields
.field public static final KEY_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "key_user_dictionary_settings"

.field private static final TAG:Ljava/lang/String; = "ColorUserDictionaryPreferenceController"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/language/UserDictionaryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryPreferenceController;->getDictionaryLocales()Ljava/util/TreeSet;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 48
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "locale"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    const-class v0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionarySettings;

    goto :goto_0

    .line 61
    :cond_2
    const-class v0, Lcom/android/settings/inputmethod/UserDictionaryList;

    .line 63
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
