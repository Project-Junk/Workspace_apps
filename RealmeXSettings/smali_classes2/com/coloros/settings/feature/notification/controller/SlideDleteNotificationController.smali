.class public abstract Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;
.super Lcom/android/settings/core/a;
.source "SlideDleteNotificationController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_SLIDE_NOTIFICATION:Ljava/lang/String; = "slide_notification"

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

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSingleSelect:Z

.field protected mslideDialogPreference:Landroidx/preference/DialogPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->VALID_CLASS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "slide_notification"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private checkDialogPreferenceValid()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mslideDialogPreference:Landroidx/preference/DialogPreference;

    if-eqz v0, :cond_1

    instance-of v0, v0, Landroidx/preference/DialogPreference;

    if-eqz v0, :cond_1

    .line 142
    sget-object v0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->VALID_CLASS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 143
    iget-object v2, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mslideDialogPreference:Landroidx/preference/DialogPreference;

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

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mslideDialogPreference:Landroidx/preference/DialogPreference;

    if-nez v0, :cond_2

    goto :goto_1

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDialogPreference is valid: it is a instance of class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mslideDialogPreference:Landroidx/preference/DialogPreference;

    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is not a instance of:  ListPreference, MultiListPreference or ColorListPreference or their subclass!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DialogPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mslideDialogPreference:Landroidx/preference/DialogPreference;

    .line 73
    invoke-direct {p0}, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->checkDialogPreferenceValid()V

    .line 74
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mslideDialogPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/DialogPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 62
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x3

    return v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mslideDialogPreference:Landroidx/preference/DialogPreference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_0
    instance-of v1, v0, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 116
    check-cast v0, Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 117
    :cond_1
    instance-of v1, v0, Landroidx/preference/MultiSelectListPreference;

    if-eqz v1, :cond_2

    .line 118
    check-cast v0, Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 119
    :cond_2
    instance-of v1, v0, Lcom/color/support/preference/ColorListPreference;

    if-eqz v1, :cond_3

    .line 120
    check-cast v0, Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mslideDialogPreference:Landroidx/preference/DialogPreference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_0
    instance-of v1, v0, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 129
    check-cast v0, Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 130
    :cond_1
    instance-of v1, v0, Landroidx/preference/MultiSelectListPreference;

    if-eqz v1, :cond_2

    .line 131
    check-cast v0, Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 132
    :cond_2
    instance-of v1, v0, Lcom/color/support/preference/ColorListPreference;

    if-eqz v1, :cond_3

    .line 133
    check-cast v0, Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract handlePreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->handlePreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setDefaultEntry(Ljava/lang/CharSequence;)V
    .locals 1

    .line 81
    iput-object p1, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mDefaultEntry:Ljava/lang/CharSequence;

    .line 82
    iget-boolean p1, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mSingleSelect:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mslideDialogPreference:Landroidx/preference/DialogPreference;

    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mDefaultEntry:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/DialogPreference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1

    .line 88
    iput-object p1, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mEntries:[Ljava/lang/CharSequence;

    .line 89
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mslideDialogPreference:Landroidx/preference/DialogPreference;

    if-eqz p1, :cond_2

    .line 90
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Landroidx/preference/ListPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void

    .line 92
    :cond_0
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_1

    .line 93
    check-cast p1, Landroidx/preference/MultiSelectListPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void

    .line 94
    :cond_1
    instance-of v0, p1, Lcom/color/support/preference/ColorListPreference;

    if-eqz v0, :cond_2

    .line 95
    check-cast p1, Lcom/color/support/preference/ColorListPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorListPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1

    .line 100
    iput-object p1, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mEntryValues:[Ljava/lang/CharSequence;

    .line 101
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mslideDialogPreference:Landroidx/preference/DialogPreference;

    if-eqz p1, :cond_2

    .line 102
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Landroidx/preference/ListPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void

    .line 104
    :cond_0
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_1

    .line 105
    check-cast p1, Landroidx/preference/MultiSelectListPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void

    .line 106
    :cond_1
    instance-of v0, p1, Lcom/color/support/preference/ColorListPreference;

    if-eqz v0, :cond_2

    .line 107
    check-cast p1, Lcom/color/support/preference/ColorListPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setSingleSelect(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;->mSingleSelect:Z

    return-void
.end method
