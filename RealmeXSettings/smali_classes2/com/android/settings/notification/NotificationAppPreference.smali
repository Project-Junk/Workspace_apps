.class public Lcom/android/settings/notification/NotificationAppPreference;
.super Lcom/android/settings/widget/MasterSwitchPreference;
.source "NotificationAppPreference.java"


# instance fields
.field private a:Landroid/widget/Switch;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/NotificationAppPreference;)Landroid/widget/Switch;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->a:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/notification/NotificationAppPreference;Z)Z
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppPreference;->persistBoolean(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/android/settings/notification/NotificationAppPreference;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->b:Z

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0d027a

    return v0
.end method

.method public final a(Lcom/android/settingslib/g$a;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 113
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppPreference;->b(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 95
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->b:Z

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->a:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 102
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->c:Z

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->a:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->a:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Lcom/android/settings/notification/NotificationAppPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationAppPreference$1;-><init>(Lcom/android/settings/notification/NotificationAppPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a06b6

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->a:Landroid/widget/Switch;

    .line 83
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->a:Landroid/widget/Switch;

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->a:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->b:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 86
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->a:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->c:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_1
    return-void
.end method
