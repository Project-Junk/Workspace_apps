.class public Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference;
.super Landroidx/preference/Preference;
.source "ColorMessageEntryHeaderPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const v0, 0x7f0d0089

    .line 55
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference;->setLayoutResource(I)V

    const-string v0, "message_entry_header"

    .line 56
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference;->setKey(Ljava/lang/String;)V

    const/16 v0, -0x65

    .line 57
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference;->setOrder(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 110
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 111
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference;->a:Landroid/app/Activity;

    iget v3, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference;->b:I

    int-to-float v3, v3

    .line 112
    invoke-static {v2, v3}, Lcom/coloros/settings/utils/o;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a;

    .line 73
    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 74
    iget p1, p1, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a;->a:I

    iput p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference;->b:I

    return-void

    .line 76
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 62
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a;

    invoke-direct {v1, v0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a;-><init>(Landroid/os/Parcelable;)V

    .line 64
    iget v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference;->b:I

    if-eqz v0, :cond_0

    .line 65
    iput v0, v1, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a;->a:I

    :cond_0
    return-object v1
.end method
