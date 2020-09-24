.class final Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$a;
.super Landroid/database/ContentObserver;
.source "ColorMessageEntryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;Landroid/os/Handler;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$a;->a:Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;

    .line 116
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 122
    new-instance p1, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$b;

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$a;->a:Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;

    invoke-direct {p1, v0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$b;-><init>(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
