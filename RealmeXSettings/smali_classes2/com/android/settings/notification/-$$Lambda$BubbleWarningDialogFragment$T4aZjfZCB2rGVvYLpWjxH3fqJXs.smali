.class public final synthetic Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$T4aZjfZCB2rGVvYLpWjxH3fqJXs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/BubbleWarningDialogFragment;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/BubbleWarningDialogFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$T4aZjfZCB2rGVvYLpWjxH3fqJXs;->f$0:Lcom/android/settings/notification/BubbleWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$T4aZjfZCB2rGVvYLpWjxH3fqJXs;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$T4aZjfZCB2rGVvYLpWjxH3fqJXs;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$T4aZjfZCB2rGVvYLpWjxH3fqJXs;->f$0:Lcom/android/settings/notification/BubbleWarningDialogFragment;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$T4aZjfZCB2rGVvYLpWjxH3fqJXs;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$T4aZjfZCB2rGVvYLpWjxH3fqJXs;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->lambda$T4aZjfZCB2rGVvYLpWjxH3fqJXs(Lcom/android/settings/notification/BubbleWarningDialogFragment;Ljava/lang/String;ILandroid/content/DialogInterface;I)V

    return-void
.end method