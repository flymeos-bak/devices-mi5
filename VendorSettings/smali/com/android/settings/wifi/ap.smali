.class Lcom/android/vendorsettings/wifi/ap;
.super Ljava/lang/Object;
.source "WifiScanModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aDF:Lcom/android/vendorsettings/wifi/WifiScanModeActivity$AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/WifiScanModeActivity$AlertDialogFragment;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/ap;->aDF:Lcom/android/vendorsettings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/ap;->aDF:Lcom/android/vendorsettings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->a(Lcom/android/vendorsettings/wifi/WifiScanModeActivity;)V

    .line 139
    return-void
.end method