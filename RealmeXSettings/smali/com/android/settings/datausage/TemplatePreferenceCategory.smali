.class public Lcom/android/settings/datausage/TemplatePreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "TemplatePreferenceCategory.java"

# interfaces
.implements Lcom/android/settings/datausage/g;


# instance fields
.field private a:Landroid/net/NetworkTemplate;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/g$a;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->a:Landroid/net/NetworkTemplate;

    .line 37
    iput p2, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->b:I

    return-void
.end method

.method public final a(Lcom/android/settings/datausage/g$a;)V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->a:Landroid/net/NetworkTemplate;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/g;

    iget-object v2, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->a:Landroid/net/NetworkTemplate;

    iget v3, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->b:I

    invoke-interface {v1, v2, v3, p1}, Lcom/android/settings/datausage/g;->a(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/g$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "null mTemplate for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPreference(Landroidx/preference/Preference;)Z
    .locals 1

    .line 42
    instance-of v0, p1, Lcom/android/settings/datausage/g;

    if-eqz v0, :cond_0

    .line 46
    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TemplatePreferenceCategories can only hold TemplatePreferences"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
