.class final Lcom/android/settings/users/AppRestrictionsFragment$3;
.super Landroid/os/AsyncTask;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AppRestrictionsFragment;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->a:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1288
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->a:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment;->b(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settingslib/p/a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->a:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/p/a;->a(Lcom/android/settingslib/p/a$c;)V

    const/4 p1, 0x0

    return-object p1
.end method
