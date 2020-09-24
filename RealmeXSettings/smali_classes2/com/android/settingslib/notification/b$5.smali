.class final Lcom/android/settingslib/notification/b$5;
.super Ljava/lang/Object;
.source "ZenDurationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/notification/b;->a(Lcom/android/settingslib/notification/b$a;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/android/settingslib/notification/b$a;

.field final synthetic c:I

.field final synthetic d:Lcom/android/settingslib/notification/b;


# direct methods
.method constructor <init>(Lcom/android/settingslib/notification/b;Landroid/view/View;Lcom/android/settingslib/notification/b$a;I)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/settingslib/notification/b$5;->d:Lcom/android/settingslib/notification/b;

    iput-object p2, p0, Lcom/android/settingslib/notification/b$5;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settingslib/notification/b$5;->b:Lcom/android/settingslib/notification/b$a;

    iput p4, p0, Lcom/android/settingslib/notification/b$5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 245
    iget-object p1, p0, Lcom/android/settingslib/notification/b$5;->d:Lcom/android/settingslib/notification/b;

    iget-object v0, p0, Lcom/android/settingslib/notification/b$5;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingslib/notification/b$5;->b:Lcom/android/settingslib/notification/b$a;

    iget v2, p0, Lcom/android/settingslib/notification/b$5;->c:I

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/android/settingslib/notification/b;->a(Landroid/view/View;Lcom/android/settingslib/notification/b$a;ZI)V

    return-void
.end method
