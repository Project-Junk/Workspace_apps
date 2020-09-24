.class public Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "UpdatableListPreferenceDialogFragment.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/b;


# instance fields
.field public a:Landroid/widget/ArrayAdapter;

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Ljava/lang/CharSequence;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->e:I

    return-void
.end method

.method public static a(Ljava/lang/String;I)Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;
    .locals 3

    .line 53
    new-instance v0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;-><init>()V

    .line 55
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 56
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "metrics_category_key"

    .line 57
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 135
    iput p2, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->b:I

    const/4 p2, -0x1

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 137
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$qQ13v2CcwZpgY1eoWoK02UwaiMQ(Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/ListPreference;)V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->b:I

    .line 156
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 157
    iget-object v4, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->d:[Ljava/lang/CharSequence;

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->e:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "metrics_category_key"

    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->e:I

    if-nez p1, :cond_0

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->c:Ljava/util/ArrayList;

    .line 1150
    invoke-virtual {p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->a(Landroidx/preference/ListPreference;)V

    return-void

    :cond_0
    const-string v0, "UpdatableListPreferenceDialogFragment.index"

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->b:I

    const-string v0, "UpdatableListPreferenceDialogFragment.entries"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->c:Ljava/util/ArrayList;

    const-string v0, "UpdatableListPreferenceDialogFragment.entryValues"

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->d:[Ljava/lang/CharSequence;

    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 88
    iget p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->b:I

    if-ltz p1, :cond_0

    .line 2150
    invoke-virtual {p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    .line 90
    iget-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->d:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->b:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 6

    .line 120
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.internal.R.styleable.AlertDialog"

    .line 123
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const-string v2, "com.android.internal.R.attr.alertDialogStyle"

    .line 124
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 121
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "com.android.internal.R.styleable.AlertDialog_singleChoiceItemLayout"

    .line 129
    invoke-static {v4}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "com.android.internal.R.layout.select_dialog_singlechoice"

    .line 130
    invoke-static {v5}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 128
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->c:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->a:Landroid/widget/ArrayAdapter;

    .line 133
    iget-object v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->a:Landroid/widget/ArrayAdapter;

    iget v2, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->b:I

    new-instance v4, Lcom/android/settings/widget/-$$Lambda$UpdatableListPreferenceDialogFragment$qQ13v2CcwZpgY1eoWoK02UwaiMQ;

    invoke-direct {v4, p0}, Lcom/android/settings/widget/-$$Lambda$UpdatableListPreferenceDialogFragment$qQ13v2CcwZpgY1eoWoK02UwaiMQ;-><init>(Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;)V

    invoke-virtual {p1, v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {p1, v3, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    iget v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->b:I

    const-string v1, "UpdatableListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->c:Ljava/util/ArrayList;

    const-string v1, "UpdatableListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->d:[Ljava/lang/CharSequence;

    const-string v1, "UpdatableListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
