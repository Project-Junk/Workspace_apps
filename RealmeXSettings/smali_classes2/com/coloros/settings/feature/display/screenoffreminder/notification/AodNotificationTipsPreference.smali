.class public Lcom/coloros/settings/feature/display/screenoffreminder/notification/AodNotificationTipsPreference;
.super Landroidx/preference/Preference;
.source "AodNotificationTipsPreference.java"


# instance fields
.field private a:Lcom/color/support/widget/ColorLoadingView;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 52
    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/AodNotificationTipsPreference;->b:Z

    .line 53
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/AodNotificationTipsPreference;->a:Lcom/color/support/widget/ColorLoadingView;

    if-eqz p1, :cond_1

    .line 54
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/AodNotificationTipsPreference;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorLoadingView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 57
    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorLoadingView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a03b8

    .line 48
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorLoadingView;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/AodNotificationTipsPreference;->a:Lcom/color/support/widget/ColorLoadingView;

    return-void
.end method
