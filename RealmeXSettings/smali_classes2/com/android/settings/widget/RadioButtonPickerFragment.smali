.class public abstract Lcom/android/settings/widget/RadioButtonPickerFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "RadioButtonPickerFragment.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$a;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/android/settings/widget/VideoPreference;

.field e:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/widget/g;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Landroid/os/UserManager;

.field protected h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->e:Z

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/g;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 209
    invoke-virtual {p3}, Lcom/android/settingslib/widget/g;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {p3}, Lcom/android/settingslib/widget/g;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/m;->a(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 212
    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 213
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 215
    :cond_0
    iget-boolean p2, p3, Lcom/android/settingslib/widget/g;->g:Z

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setEnabled(Z)V

    .line 3069
    iput-object p0, p1, Lcom/android/settings/widget/RadioButtonPreference;->a:Lcom/android/settings/widget/RadioButtonPreference$a;

    return-object p1
.end method

.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/g;",
            ">;"
        }
    .end annotation
.end method

.method protected a(Landroidx/preference/PreferenceGroup;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 0

    .line 113
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/g;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    return-void
.end method

.method protected a(Z)V
    .locals 0

    return-void
.end method

.method protected abstract a(Ljava/lang/String;)Z
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->d(Ljava/lang/String;)V

    .line 146
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->a(Z)V

    return-void
.end method

.method protected final c(Ljava/lang/String;)Lcom/android/settingslib/widget/g;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/g;

    return-object p1
.end method

.method protected d()Landroidx/preference/PreferenceGroup;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->d()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 226
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 227
    instance-of v4, v3, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v4, :cond_0

    .line 228
    move-object v4, v3

    check-cast v4, Lcom/android/settings/widget/RadioButtonPreference;

    .line 229
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 230
    invoke-virtual {v4}, Lcom/android/settings/widget/RadioButtonPreference;->isChecked()Z

    move-result v6

    if-eq v6, v5, :cond_0

    .line 231
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->d()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 243
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 244
    instance-of v1, v0, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v1, :cond_0

    .line 245
    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getPreferenceScreenResId()I
.end method

.method protected h_()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public j_()V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/g;

    .line 163
    iget-object v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->f:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/settingslib/widget/g;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->b()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->d()Landroidx/preference/PreferenceGroup;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 170
    iget v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->a:I

    if-eqz v3, :cond_1

    .line 1262
    new-instance v3, Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/widget/VideoPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->c:Lcom/android/settings/widget/VideoPreference;

    .line 1263
    iget-object v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->c:Lcom/android/settings/widget/VideoPreference;

    iget v4, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->a:I

    iget v5, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->b:I

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/widget/VideoPreference;->a(II)V

    .line 1264
    iget-object v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->c:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 173
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->e:Z

    if-nez v3, :cond_2

    .line 174
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/RadioButtonPickerFragment;->a(Landroidx/preference/PreferenceGroup;)V

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->h_()I

    move-result v3

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->g_()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 179
    new-instance v4, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    if-lez v3, :cond_3

    .line 181
    invoke-virtual {v4, v3}, Lcom/android/settings/widget/RadioButtonPreference;->setLayoutResource(I)V

    :cond_3
    const v5, 0x7f080807

    .line 183
    invoke-virtual {v4, v5}, Lcom/android/settings/widget/RadioButtonPreference;->setIcon(I)V

    const v5, 0x7f1201ce

    .line 184
    invoke-virtual {v4, v5}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    .line 185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 2069
    iput-object p0, v4, Lcom/android/settings/widget/RadioButtonPreference;->a:Lcom/android/settings/widget/RadioButtonPreference$a;

    .line 187
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    if-eqz v0, :cond_6

    .line 190
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/widget/g;

    .line 191
    new-instance v5, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    if-lez v3, :cond_5

    .line 193
    invoke-virtual {v5, v3}, Lcom/android/settings/widget/RadioButtonPreference;->setLayoutResource(I)V

    .line 195
    :cond_5
    invoke-virtual {v4}, Lcom/android/settingslib/widget/g;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v4, v1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->a(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/g;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;

    .line 196
    invoke-virtual {v4}, Lcom/android/settingslib/widget/g;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/settings/widget/RadioButtonPickerFragment;->a(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/g;)V

    .line 197
    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 200
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->g()V

    .line 201
    iget-boolean v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->e:Z

    if-eqz v0, :cond_7

    .line 202
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/RadioButtonPickerFragment;->a(Landroidx/preference/PreferenceGroup;)V

    :cond_7
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "user"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->g:Landroid/os/UserManager;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "for_work"

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->g:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/m;->a(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    goto :goto_1

    .line 78
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->h:I

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const-string v0, "RadioButtonPckrFrgmt"

    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPreferenceScreenResId()I

    move-result p2

    const/16 v1, 0x401

    .line 86
    invoke-static {p1, p2, v1}, Lcom/android/settings/core/e;->a(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 90
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "staticPreferenceLocation"

    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->e:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Error parsing xml"

    .line 95
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "Error trying to open xml file"

    .line 93
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->j_()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 104
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/RadioButtonPickerFragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method
