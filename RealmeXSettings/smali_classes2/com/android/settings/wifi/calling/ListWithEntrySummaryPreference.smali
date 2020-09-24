.class public Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;
.super Lcom/android/settings/CustomListPreference;
.source "ListWithEntrySummaryPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;,
        Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->a:Landroid/content/Context;

    .line 55
    sget-object v0, Lcom/android/settings/g$a;->ListWithEntrySummaryPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->b:[Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;I)Ljava/lang/CharSequence;
    .locals 0

    .line 1080
    iget-object p0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->b:[Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const-string p0, "ListWithEntrySummaryPreference"

    const-string p1, "getEntrySummary : mSummaries is null"

    .line 1081
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 1084
    :cond_0
    aget-object p0, p0, p1

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 90
    new-instance v0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$b;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$b;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/settings/CustomListPreference;->a(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->b:[Ljava/lang/CharSequence;

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    check-cast p1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;

    .line 154
    invoke-virtual {p1}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/settings/CustomListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 155
    invoke-static {p1}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->a(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 156
    invoke-static {p1}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->b(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 157
    invoke-static {p1}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->c(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->b:[Ljava/lang/CharSequence;

    return-void

    .line 149
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 136
    invoke-super {p0}, Lcom/android/settings/CustomListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;-><init>(Landroid/os/Parcelable;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->a(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->b(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->b:[Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->c(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    return-object v1
.end method
