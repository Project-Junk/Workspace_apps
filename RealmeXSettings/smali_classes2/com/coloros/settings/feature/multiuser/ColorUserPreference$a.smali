.class final Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;
.super Landroid/os/AsyncTask;
.source "ColorUserPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/multiuser/ColorUserPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/preference/PreferenceFragmentCompat;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Lcom/android/settings/accessibility/c;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, -0xb

    .line 226
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;-><init>(Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;II)V
    .locals 1

    .line 229
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 230
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->a:Ljava/lang/ref/WeakReference;

    .line 231
    iput-object p2, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->b:Ljava/lang/String;

    .line 232
    iput p3, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->c:I

    .line 233
    iput p4, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->d:I

    return-void
.end method

.method private varargs a()Ljava/lang/Integer;
    .locals 7

    const-string v0, "ColorUserPreference"

    .line 264
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->a:Ljava/lang/ref/WeakReference;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 269
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v3

    .line 273
    :cond_1
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 274
    iget v5, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->c:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doInBackground, mType: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget v5, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->d:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    .line 281
    :cond_2
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 283
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    :cond_3
    const-string v1, "doInBackground: guestId: "

    .line 285
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    return-object v3
.end method

.method private b()V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12185a

    .line 323
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 322
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->a()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 215
    check-cast p1, Ljava/lang/Integer;

    .line 1294
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->e:Lcom/android/settings/accessibility/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/accessibility/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->e:Lcom/android/settings/accessibility/c;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/c;->dismiss()V

    const/4 v0, 0x0

    .line 1299
    iput-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->e:Lcom/android/settings/accessibility/c;

    .line 1303
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ColorUserPreference"

    if-ne v0, v1, :cond_1

    const-string p1, "onPostExecute: create failed."

    .line 1304
    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    invoke-direct {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->b()V

    return-void

    .line 1309
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/coloros/settings/feature/multiuser/d;->a(I)Z

    move-result p1

    const-string v0, "onPostExecute: guest created success and switched.: "

    .line 1310
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1312
    invoke-direct {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->b()V

    const-string v0, "onPostExecute: switched guest failed."

    .line 1313
    invoke-static {v2, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    .line 238
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreExecute, mType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorUserPreference"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->c:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 246
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 250
    :cond_2
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 251
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->e:Lcom/android/settings/accessibility/c;

    if-nez v0, :cond_3

    .line 253
    new-instance v0, Lcom/android/settings/accessibility/c;

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->e:Lcom/android/settings/accessibility/c;

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->e:Lcom/android/settings/accessibility/c;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/c;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->e:Lcom/android/settings/accessibility/c;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/c;->show()V

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string v0, "onPreExecute: mFragmentRef is null;"

    .line 242
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
