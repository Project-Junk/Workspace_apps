.class public final Lcom/android/settingslib/b/a$1;
.super Landroid/os/AsyncTask;
.source "AuthenticatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/settingslib/b/a;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/b/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settingslib/b/a$1;->c:Lcom/android/settingslib/b/a;

    iput-object p2, p0, Lcom/android/settingslib/b/a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settingslib/b/a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1083
    iget-object p1, p0, Lcom/android/settingslib/b/a$1;->c:Lcom/android/settingslib/b/a;

    iget-object v0, p0, Lcom/android/settingslib/b/a$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/b/a$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    return-object p1
.end method
