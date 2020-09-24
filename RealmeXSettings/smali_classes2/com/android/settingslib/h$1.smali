.class final Lcom/android/settingslib/h$1;
.super Ljava/lang/Object;
.source "RestrictedLockUtilsInternal.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/h;->a(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/android/settingslib/g$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/g$a;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/android/settingslib/h$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/h$1;->b:Lcom/android/settingslib/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 607
    iget-object p1, p0, Lcom/android/settingslib/h$1;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settingslib/h$1;->b:Lcom/android/settingslib/g$a;

    invoke-static {p1, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    const/4 p1, 0x1

    return p1
.end method
