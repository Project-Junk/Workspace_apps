.class public final synthetic Lcom/coloros/settings/feature/password/module/-$$Lambda$CodeBookModule$S_Z2B1NE-8flhBnwVBsyOPY7haQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/password/module/CodeBookModule;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/password/module/CodeBookModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/password/module/-$$Lambda$CodeBookModule$S_Z2B1NE-8flhBnwVBsyOPY7haQ;->f$0:Lcom/coloros/settings/feature/password/module/CodeBookModule;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/settings/feature/password/module/-$$Lambda$CodeBookModule$S_Z2B1NE-8flhBnwVBsyOPY7haQ;->f$0:Lcom/coloros/settings/feature/password/module/CodeBookModule;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/module/CodeBookModule;->lambda$showExitCodeBookConfirmDialog$0$CodeBookModule(Landroid/content/DialogInterface;)V

    return-void
.end method
