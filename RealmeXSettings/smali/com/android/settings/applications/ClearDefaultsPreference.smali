.class public Lcom/android/settings/applications/ClearDefaultsPreference;
.super Landroidx/preference/Preference;
.source "ClearDefaultsPreference.java"


# static fields
.field protected static final a:Ljava/lang/String; = "ClearDefaultsPreference"


# instance fields
.field b:Ljava/lang/String;

.field protected c:Lcom/coloros/settingslib/applications/ApplicationsState$a;

.field private d:Landroid/widget/Button;

.field private e:Landroid/appwidget/AppWidgetManager;

.field private f:Landroid/hardware/usb/IUsbManager;

.field private g:Landroid/content/pm/PackageManager;

.field private h:Lcom/coloros/settings/adaptor/ClearDefaultsPreferenceAdaptor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0404a8

    const v1, 0x101008e

    .line 75
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1186
    iget-object p2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->h:Lcom/coloros/settings/adaptor/ClearDefaultsPreferenceAdaptor;

    if-nez p2, :cond_0

    .line 1187
    const-class p2, Lcom/coloros/settings/adaptor/ClearDefaultsPreferenceAdaptor;

    invoke-static {p2}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/adaptor/ClearDefaultsPreferenceAdaptor;

    iput-object p2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->h:Lcom/coloros/settings/adaptor/ClearDefaultsPreferenceAdaptor;

    .line 1189
    :cond_0
    iget-object p2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->h:Lcom/coloros/settings/adaptor/ClearDefaultsPreferenceAdaptor;

    const p3, 0x7f0d0047

    .line 62
    invoke-virtual {p2, p3}, Lcom/coloros/settings/adaptor/ClearDefaultsPreferenceAdaptor;->getLayoutResourceId(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/ClearDefaultsPreference;->setLayoutResource(I)V

    .line 64
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->e:Landroid/appwidget/AppWidgetManager;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->g:Landroid/content/pm/PackageManager;

    const-string/jumbo p1, "usb"

    .line 66
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->f:Landroid/hardware/usb/IUsbManager;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->f:Landroid/hardware/usb/IUsbManager;

    return-object p0
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 1

    const v0, 0x7f120278

    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->d:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ClearDefaultsPreference;Ljava/lang/String;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->g:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->g:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic d(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->e:Landroid/appwidget/AppWidgetManager;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->c:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 11

    .line 94
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a014a

    .line 96
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->d:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->d:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/applications/ClearDefaultsPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference$1;-><init>(Lcom/android/settings/applications/ClearDefaultsPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2122
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->e:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->c:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2123
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f0a00be

    .line 2125
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2126
    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->g:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->b:Ljava/lang/String;

    .line 2127
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->f:Landroid/hardware/usb/IUsbManager;

    iget-object v4, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->b:Ljava/lang/String;

    .line 2128
    invoke-static {v1, v4}, Lcom/coloros/settingslib/applications/a;->a(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 2130
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->a(Landroid/widget/TextView;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v0, :cond_4

    const v5, 0x7f12027b

    .line 2135
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_4
    const v5, 0x7f12027a

    .line 2137
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2140
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    .line 2142
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0703e3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v8, 0x2

    const-string v9, "\n"

    if-eqz v1, :cond_6

    const v1, 0x7f120279

    .line 2145
    invoke-virtual {v5, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2147
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_5

    .line 2149
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v7}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v6, v10, v3, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2151
    :cond_5
    new-array v1, v8, [Ljava/lang/CharSequence;

    aput-object v6, v1, v3

    aput-object v9, v1, v2

    .line 2152
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    :cond_6
    if-eqz v0, :cond_9

    const v0, 0x7f120148

    .line 2156
    invoke-virtual {v5, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2157
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_7

    .line 2159
    new-instance v4, Landroid/text/style/BulletSpan;

    invoke-direct {v4, v7}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 2160
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2159
    invoke-virtual {v1, v4, v3, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    if-nez v6, :cond_8

    .line 2162
    new-array v0, v8, [Ljava/lang/CharSequence;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    goto :goto_4

    :cond_8
    const/4 v0, 0x4

    .line 2163
    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v6, v0, v3

    aput-object v9, v0, v2

    aput-object v1, v0, v8

    const/4 v1, 0x3

    aput-object v9, v0, v1

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v6, v0

    .line 2165
    :cond_9
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2166
    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->d:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 194
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 195
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->h:Lcom/coloros/settings/adaptor/ClearDefaultsPreferenceAdaptor;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ClearDefaultsPreferenceAdaptor;->unbind()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->h:Lcom/coloros/settings/adaptor/ClearDefaultsPreferenceAdaptor;

    :cond_0
    return-void
.end method
