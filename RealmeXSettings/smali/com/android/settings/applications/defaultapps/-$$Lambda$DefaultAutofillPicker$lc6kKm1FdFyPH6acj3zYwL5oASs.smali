.class public final synthetic Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$lc6kKm1FdFyPH6acj3zYwL5oASs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$lc6kKm1FdFyPH6acj3zYwL5oASs;->f$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    iput-object p2, p0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$lc6kKm1FdFyPH6acj3zYwL5oASs;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$lc6kKm1FdFyPH6acj3zYwL5oASs;->f$2:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$lc6kKm1FdFyPH6acj3zYwL5oASs;->f$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$lc6kKm1FdFyPH6acj3zYwL5oASs;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$lc6kKm1FdFyPH6acj3zYwL5oASs;->f$2:Landroid/content/Intent;

    invoke-static {v0, v1, v2, p1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->lambda$lc6kKm1FdFyPH6acj3zYwL5oASs(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
