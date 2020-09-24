.class final Lcom/android/settingslib/notification/b$1;
.super Ljava/lang/Object;
.source "ZenDurationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/notification/b;->a(Landroidx/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/settingslib/notification/b;


# direct methods
.method constructor <init>(Lcom/android/settingslib/notification/b;I)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/settingslib/notification/b$1;->b:Lcom/android/settingslib/notification/b;

    iput p2, p0, Lcom/android/settingslib/notification/b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/android/settingslib/notification/b$1;->b:Lcom/android/settingslib/notification/b;

    iget p2, p0, Lcom/android/settingslib/notification/b$1;->a:I

    invoke-virtual {p1, p2}, Lcom/android/settingslib/notification/b;->a(I)V

    return-void
.end method
