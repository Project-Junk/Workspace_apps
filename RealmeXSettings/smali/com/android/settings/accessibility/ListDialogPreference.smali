.class public abstract Lcom/android/settings/accessibility/ListDialogPreference;
.super Lcom/coloros/settingslib/CustomDialogPreferenceCompat;
.source "ListDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ListDialogPreference$b;,
        Lcom/android/settings/accessibility/ListDialogPreference$c;,
        Lcom/android/settings/accessibility/ListDialogPreference$a;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/CharSequence;

.field protected b:[I

.field c:Lcom/android/settings/accessibility/ListDialogPreference$b;

.field protected d:I

.field protected e:I

.field protected f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/accessibility/ListDialogPreference;)[I
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->b:[I

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/accessibility/ListDialogPreference;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->d:I

    return p0
.end method

.method private c(I)I
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->b:[I

    if-eqz v0, :cond_1

    .line 186
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 188
    aget v3, v0, v2

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->e:I

    return v0
.end method

.method protected a(I)Ljava/lang/CharSequence;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->a:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract a(Landroid/view/View;I)V
.end method

.method public final a(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    .line 147
    invoke-super {p0, p1, p2}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->a(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getDialogLayoutResource()I

    move-result v0

    .line 151
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 152
    new-instance v0, Lcom/android/settings/accessibility/ListDialogPreference$a;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference$a;-><init>(Lcom/android/settings/accessibility/ListDialogPreference;)V

    const v2, 0x102000a

    .line 153
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView;

    .line 154
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    new-instance v0, Lcom/android/settings/accessibility/ListDialogPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference$1;-><init>(Lcom/android/settings/accessibility/ListDialogPreference;)V

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->e:I

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->c(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 172
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 175
    :cond_0
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {p1, v1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    return-void
.end method

.method public final a([I)V
    .locals 1

    .line 90
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->b:[I

    .line 92
    iget-boolean p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->g:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->f:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 93
    iget p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->e:I

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->c(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->f:I

    :cond_0
    return-void
.end method

.method public a([Ljava/lang/CharSequence;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->a:[Ljava/lang/CharSequence;

    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 204
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->e:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 205
    iget-boolean v2, p0, Lcom/android/settings/accessibility/ListDialogPreference;->g:Z

    if-nez v2, :cond_3

    .line 206
    :cond_1
    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->e:I

    .line 207
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->c(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/ListDialogPreference;->f:I

    .line 208
    iput-boolean v1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->g:Z

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->persistInt(I)Z

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->notifyDependencyChange(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->notifyChanged()V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->c:Lcom/android/settings/accessibility/ListDialogPreference$b;

    if-eqz v0, :cond_3

    .line 215
    invoke-interface {v0, p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference$b;->a(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    :cond_3
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 138
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->f:I

    if-ltz v0, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 339
    invoke-super {p0, p1}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0176

    .line 340
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 342
    invoke-virtual {v0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1020010

    .line 345
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/accessibility/ListDialogPreference$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    check-cast p1, Lcom/android/settings/accessibility/ListDialogPreference$c;

    .line 259
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ListDialogPreference$c;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 260
    iget p1, p1, Lcom/android/settings/accessibility/ListDialogPreference$c;->a:I

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->b(I)V

    return-void

    .line 254
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 239
    invoke-super {p0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 245
    :cond_0
    new-instance v1, Lcom/android/settings/accessibility/ListDialogPreference$c;

    invoke-direct {v1, v0}, Lcom/android/settings/accessibility/ListDialogPreference$c;-><init>(Landroid/os/Parcelable;)V

    .line 1224
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->e:I

    .line 246
    iput v0, v1, Lcom/android/settings/accessibility/ListDialogPreference$c;->a:I

    return-object v1
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 234
    iget p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->e:I

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->b(I)V

    return-void
.end method
