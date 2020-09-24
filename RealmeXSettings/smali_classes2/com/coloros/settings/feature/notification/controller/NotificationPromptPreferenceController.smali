.class public Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;
.super Lcom/android/settings/core/a;
.source "NotificationPromptPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/a/b;


# static fields
.field public static final DEFAULT_NOTIFICATION_MODE_TYPE_EXP:I = 0x0

.field public static final DEFAULT_NOTIFICATION_MODE_TYPE_NOMARL:I = 0x0

.field public static final KEY_NOTIFICATION_PROMPT_MODE:Ljava/lang/String; = "key_notification_prompt_mode"

.field private static final VALID_CLASS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultEntry:Ljava/lang/CharSequence;

.field private mPromptModeListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

.field private mSingleSelect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->VALID_CLASS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_notification_prompt_mode"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->setSingleSelect(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private checkDialogPreferenceValid()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mPromptModeListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz v0, :cond_1

    instance-of v0, v0, Landroidx/preference/DialogPreference;

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->VALID_CLASS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 112
    iget-object v2, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mPromptModeListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mPromptModeListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-nez v0, :cond_2

    goto :goto_1

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDialogPreference is valid: it is a instance of class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mPromptModeListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    .line 120
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is not a instance of:  ListPreference, MultiListPreference or ColorSingleSelectListPreference or their subclass!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method private setDefaultEntry(Ljava/lang/String;)V
    .locals 1

    .line 87
    iput-object p1, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mDefaultEntry:Ljava/lang/CharSequence;

    .line 88
    iget-boolean p1, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mSingleSelect:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mPromptModeListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mDefaultEntry:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mPromptModeListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    .line 70
    invoke-direct {p0}, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->checkDialogPreferenceValid()V

    .line 71
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mPromptModeListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const-string v0, "notification_prompt_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 76
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 77
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->setDefaultEntry(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mPromptModeListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mPromptModeListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    instance-of v1, v0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz v1, :cond_0

    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mPromptModeListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_prompt_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mPromptModeListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0300b1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 101
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mPromptModeListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    aget-object p1, p2, p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setSingleSelect(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;->mSingleSelect:Z

    return-void
.end method
