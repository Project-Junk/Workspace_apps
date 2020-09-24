.class final Lcom/android/settings/notification/ZenRuleSelectionDialog$a;
.super Landroid/os/AsyncTask;
.source "ZenRuleSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRuleSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/pm/ApplicationInfo;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/ZenRuleSelectionDialog;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;Landroid/widget/ImageView;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$a;->a:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 231
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 227
    check-cast p1, [Landroid/content/pm/ApplicationInfo;

    const/4 v0, 0x0

    .line 2236
    aget-object p1, p1, v0

    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->c()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 227
    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1244
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
