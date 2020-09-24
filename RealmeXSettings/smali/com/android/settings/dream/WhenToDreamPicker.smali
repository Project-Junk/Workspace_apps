.class public Lcom/android/settings/dream/WhenToDreamPicker;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "WhenToDreamPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dream/WhenToDreamPicker$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/settingslib/i/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/g;",
            ">;"
        }
    .end annotation

    .line 1072
    invoke-virtual {p0}, Lcom/android/settings/dream/WhenToDreamPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1076
    invoke-virtual {p0}, Lcom/android/settings/dream/WhenToDreamPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    .line 59
    array-length v3, v0

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_2

    .line 60
    array-length v3, v1

    array-length v4, v0

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    .line 64
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 65
    new-instance v4, Lcom/android/settings/dream/WhenToDreamPicker$a;

    aget-object v5, v0, v3

    aget-object v6, v1, v3

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/dream/WhenToDreamPicker$a;-><init>(Lcom/android/settings/dream/WhenToDreamPicker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entries and values must be of the same length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->a(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/dream/WhenToDreamPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPicker;->a:Lcom/android/settingslib/i/a;

    invoke-static {p1}, Lcom/android/settings/dream/DreamSettings;->a(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1205
    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v4, "screensaver_enabled"

    .line 1206
    invoke-virtual {v0, v4, v3}, Lcom/android/settingslib/i/a;->a(Ljava/lang/String;Z)V

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 1189
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/settingslib/i/a;->a(Z)V

    .line 1190
    invoke-virtual {v0, v2}, Lcom/android/settingslib/i/a;->b(Z)V

    goto :goto_1

    .line 1184
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/settingslib/i/a;->a(Z)V

    .line 1185
    invoke-virtual {v0, v1}, Lcom/android/settingslib/i/a;->b(Z)V

    goto :goto_1

    .line 1179
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/settingslib/i/a;->a(Z)V

    .line 1180
    invoke-virtual {v0, v2}, Lcom/android/settingslib/i/a;->b(Z)V

    :goto_1
    return v2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPicker;->a:Lcom/android/settingslib/i/a;

    invoke-virtual {v0}, Lcom/android/settingslib/i/a;->c()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/dream/DreamSettings;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15013e

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 40
    invoke-static {p1}, Lcom/android/settingslib/i/a;->a(Landroid/content/Context;)Lcom/android/settingslib/i/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/WhenToDreamPicker;->a:Lcom/android/settingslib/i/a;

    return-void
.end method
