.class final Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;
.super Ljava/lang/Object;
.source "CustomListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->a()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;->a:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;->a:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {p1, p2}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->a(I)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;->a:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-static {p1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->a(Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;)Lcom/android/settings/CustomListPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/CustomListPreference;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;->a:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {p1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->b()V

    :cond_0
    return-void
.end method
