.class public Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$a;,
        Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;
    }
.end annotation


# static fields
.field static final c:Landroid/content/Intent;


# instance fields
.field private d:Landroid/content/DialogInterface$OnClickListener;

.field private final i:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->c:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    .line 128
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->i:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method private static synthetic a(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 0

    .line 177
    iget p3, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->h:I

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$l4DJ8x3JWOQz96NSIrhbqMCcOSo(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->a(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$lc6kKm1FdFyPH6acj3zYwL5oASs(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->a(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
    .locals 1

    .line 88
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;-><init>()V

    .line 90
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;->a(Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected final a(Lcom/android/settingslib/widget/g;)Ljava/lang/CharSequence;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 244
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/widget/g;->a()Ljava/lang/CharSequence;

    move-result-object p1

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120289

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/b;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->a:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->c:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->h:I

    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 205
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BIND_AUTOFILL_SERVICE"

    .line 206
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    new-instance v5, Lcom/android/settingslib/applications/b;

    iget-object v6, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->a:Landroid/content/pm/PackageManager;

    iget v7, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->h:I

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v2, v6, v7, v8}, Lcom/android/settingslib/applications/b;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v5, "android.permission.BIND_AUTOFILL"

    .line 210
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AutofillService from \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' uses unsupported permission android.permission.BIND_AUTOFILL. It works for now, but might not be supported on future releases"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DefaultAutofillPicker"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v4, Lcom/android/settingslib/applications/b;

    iget-object v5, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->a:Landroid/content/pm/PackageManager;

    iget v6, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->h:I

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v2, v5, v6, v7}, Lcom/android/settingslib/applications/b;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->h:I

    const-string v2, "autofill_service"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 262
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 263
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->h:I

    .line 2224
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "autofill_service"

    .line 2223
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2226
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2228
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected f()V
    .locals 4

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->j_()V

    .line 2166
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->h:I

    const-string v2, "autofill_service_search_uri"

    .line 2165
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2173
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2174
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 2175
    new-instance v2, Landroidx/preference/Preference;

    invoke-direct {v2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2176
    new-instance v3, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$lc6kKm1FdFyPH6acj3zYwL5oASs;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$lc6kKm1FdFyPH6acj3zYwL5oASs;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f1210af

    .line 2180
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const v0, 0x7f080461

    .line 2181
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setIcon(I)V

    const v0, 0x7ffffffe

    .line 2182
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOrder(I)V

    const/4 v0, 0x0

    .line 2183
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 1194
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public final g_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x318

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150085

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$l4DJ8x3JWOQz96NSIrhbqMCcOSo;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$l4DJ8x3JWOQz96NSIrhbqMCcOSo;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->h:I

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->i:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->f()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->i:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 156
    invoke-super {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onDestroy()V

    return-void
.end method
